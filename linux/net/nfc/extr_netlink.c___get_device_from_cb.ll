; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c___get_device_from_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c___get_device_from_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.nfc_dev = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.nlattr = type { i32 }

@nfc_genl_family = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GENL_HDRLEN = common dso_local global i64 0, align 8
@nfc_genl_policy = common dso_local global i32 0, align 4
@NFC_ATTR_DEVICE_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfc_dev* (%struct.netlink_callback*)* @__get_device_from_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfc_dev* @__get_device_from_cb(%struct.netlink_callback* %0) #0 {
  %2 = alloca %struct.nfc_dev*, align 8
  %3 = alloca %struct.netlink_callback*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.netlink_callback* %0, %struct.netlink_callback** %3, align 8
  %8 = call %struct.nlattr** @genl_family_attrbuf(%struct.TYPE_3__* @nfc_genl_family)
  store %struct.nlattr** %8, %struct.nlattr*** %4, align 8
  %9 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %10 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* @GENL_HDRLEN, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfc_genl_family, i32 0, i32 1), align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nfc_genl_family, i32 0, i32 0), align 8
  %17 = load i32, i32* @nfc_genl_policy, align 4
  %18 = call i32 @nlmsg_parse_deprecated(i32 %11, i64 %14, %struct.nlattr** %15, i32 %16, i32 %17, i32* null)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.nfc_dev* @ERR_PTR(i32 %22)
  store %struct.nfc_dev* %23, %struct.nfc_dev** %2, align 8
  br label %50

24:                                               ; preds = %1
  %25 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %26 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.nfc_dev* @ERR_PTR(i32 %32)
  store %struct.nfc_dev* %33, %struct.nfc_dev** %2, align 8
  br label %50

34:                                               ; preds = %24
  %35 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %36 = load i64, i64* @NFC_ATTR_DEVICE_INDEX, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call i32 @nla_get_u32(%struct.nlattr* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.nfc_dev* @nfc_get_device(i32 %40)
  store %struct.nfc_dev* %41, %struct.nfc_dev** %5, align 8
  %42 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %43 = icmp ne %struct.nfc_dev* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.nfc_dev* @ERR_PTR(i32 %46)
  store %struct.nfc_dev* %47, %struct.nfc_dev** %2, align 8
  br label %50

48:                                               ; preds = %34
  %49 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  store %struct.nfc_dev* %49, %struct.nfc_dev** %2, align 8
  br label %50

50:                                               ; preds = %48, %44, %30, %21
  %51 = load %struct.nfc_dev*, %struct.nfc_dev** %2, align 8
  ret %struct.nfc_dev* %51
}

declare dso_local %struct.nlattr** @genl_family_attrbuf(%struct.TYPE_3__*) #1

declare dso_local i32 @nlmsg_parse_deprecated(i32, i64, %struct.nlattr**, i32, i32, i32*) #1

declare dso_local %struct.nfc_dev* @ERR_PTR(i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.nfc_dev* @nfc_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
