; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_se_io_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_se_io_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_io_ctx = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nfc_genl_family = common dso_local global i32 0, align 4
@NFC_CMD_SE_IO = common dso_local global i32 0, align 4
@NFC_ATTR_DEVICE_INDEX = common dso_local global i32 0, align 4
@NFC_ATTR_SE_INDEX = common dso_local global i32 0, align 4
@NFC_ATTR_SE_APDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64, i32)* @se_io_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se_io_cb(i8* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.se_io_ctx*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.se_io_ctx*
  store %struct.se_io_ctx* %13, %struct.se_io_ctx** %9, align 8
  %14 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sk_buff* @nlmsg_new(i32 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load %struct.se_io_ctx*, %struct.se_io_ctx** %9, align 8
  %21 = call i32 @kfree(%struct.se_io_ctx* %20)
  br label %68

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = load i32, i32* @NFC_CMD_SE_IO, align 4
  %25 = call i8* @genlmsg_put(%struct.sk_buff* %23, i32 0, i32 0, i32* @nfc_genl_family, i32 0, i32 %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %63

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = load i32, i32* @NFC_ATTR_DEVICE_INDEX, align 4
  %32 = load %struct.se_io_ctx*, %struct.se_io_ctx** %9, align 8
  %33 = getelementptr inbounds %struct.se_io_ctx, %struct.se_io_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nla_put_u32(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = load i32, i32* @NFC_ATTR_SE_INDEX, align 4
  %40 = load %struct.se_io_ctx*, %struct.se_io_ctx** %9, align 8
  %41 = getelementptr inbounds %struct.se_io_ctx, %struct.se_io_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @nla_put_u32(%struct.sk_buff* %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = load i32, i32* @NFC_ATTR_SE_APDU, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @nla_put(%struct.sk_buff* %46, i32 %47, i64 %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45, %37, %29
  br label %62

53:                                               ; preds = %45
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @genlmsg_end(%struct.sk_buff* %54, i8* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @genlmsg_multicast(i32* @nfc_genl_family, %struct.sk_buff* %57, i32 0, i32 0, i32 %58)
  %60 = load %struct.se_io_ctx*, %struct.se_io_ctx** %9, align 8
  %61 = call i32 @kfree(%struct.se_io_ctx* %60)
  br label %68

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %28
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = call i32 @nlmsg_free(%struct.sk_buff* %64)
  %66 = load %struct.se_io_ctx*, %struct.se_io_ctx** %9, align 8
  %67 = call i32 @kfree(%struct.se_io_ctx* %66)
  br label %68

68:                                               ; preds = %63, %53, %19
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @kfree(%struct.se_io_ctx*) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
