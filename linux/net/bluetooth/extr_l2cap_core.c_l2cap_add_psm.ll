; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_add_psm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_add_psm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i8*, i8*, i32 }

@chan_list_lock = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i32 0, align 4
@L2CAP_PSM_DYN_START = common dso_local global i64 0, align 8
@L2CAP_PSM_AUTO_END = common dso_local global i64 0, align 8
@L2CAP_PSM_LE_DYN_START = common dso_local global i64 0, align 8
@L2CAP_PSM_LE_DYN_END = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2cap_add_psm(%struct.l2cap_chan* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = call i32 @write_lock(i32* @chan_list_lock)
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @__l2cap_global_chan_by_addr(i8* %16, i32* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @EADDRINUSE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %81

26:                                               ; preds = %15, %3
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %32 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %35 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  store i32 0, i32* %7, align 4
  br label %80

36:                                               ; preds = %26
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %38 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BDADDR_BREDR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i64, i64* @L2CAP_PSM_DYN_START, align 8
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* @L2CAP_PSM_AUTO_END, align 8
  store i64 %44, i64* %10, align 8
  store i64 2, i64* %11, align 8
  br label %48

45:                                               ; preds = %36
  %46 = load i64, i64* @L2CAP_PSM_LE_DYN_START, align 8
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* @L2CAP_PSM_LE_DYN_END, align 8
  store i64 %47, i64* %10, align 8
  store i64 1, i64* %11, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %75, %48
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load i64, i64* %8, align 8
  %58 = call i8* @cpu_to_le16(i64 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %61 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @__l2cap_global_chan_by_addr(i8* %58, i32* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load i64, i64* %8, align 8
  %67 = call i8* @cpu_to_le16(i64 %66)
  %68 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %69 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i8* @cpu_to_le16(i64 %70)
  %72 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %73 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  store i32 0, i32* %7, align 4
  br label %79

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %8, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %8, align 8
  br label %52

79:                                               ; preds = %65, %52
  br label %80

80:                                               ; preds = %79, %29
  br label %81

81:                                               ; preds = %80, %23
  %82 = call i32 @write_unlock(i32* @chan_list_lock)
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @__l2cap_global_chan_by_addr(i8*, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
