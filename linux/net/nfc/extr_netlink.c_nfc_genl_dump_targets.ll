; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_dump_targets.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_netlink.c_nfc_genl_dump_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, i32 }
%struct.nfc_dev = type { i32, i32, i32*, i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @nfc_genl_dump_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_genl_dump_targets(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %9 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %10 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %15 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.nfc_dev*
  store %struct.nfc_dev* %20, %struct.nfc_dev** %7, align 8
  %21 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %22 = icmp ne %struct.nfc_dev* %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %2
  %24 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %25 = call %struct.nfc_dev* @__get_device_from_cb(%struct.netlink_callback* %24)
  store %struct.nfc_dev* %25, %struct.nfc_dev** %7, align 8
  %26 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %27 = call i64 @IS_ERR(%struct.nfc_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %31 = call i32 @PTR_ERR(%struct.nfc_dev* %30)
  store i32 %31, i32* %3, align 4
  br label %84

32:                                               ; preds = %23
  %33 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %34 = ptrtoint %struct.nfc_dev* %33 to i64
  %35 = trunc i64 %34 to i32
  %36 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %37 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %2
  %41 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %42 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %41, i32 0, i32 1
  %43 = call i32 @device_lock(i32* %42)
  %44 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %45 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %48 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %69, %40
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %52 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %58 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %64 = load i32, i32* @NLM_F_MULTI, align 4
  %65 = call i32 @nfc_genl_send_target(%struct.sk_buff* %56, i32* %62, %struct.netlink_callback* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %72

69:                                               ; preds = %55
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %49

72:                                               ; preds = %68, %49
  %73 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %74 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %73, i32 0, i32 1
  %75 = call i32 @device_unlock(i32* %74)
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %78 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %72, %29
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.nfc_dev* @__get_device_from_cb(%struct.netlink_callback*) #1

declare dso_local i64 @IS_ERR(%struct.nfc_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.nfc_dev*) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @nfc_genl_send_target(%struct.sk_buff*, i32*, %struct.netlink_callback*, i32) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
