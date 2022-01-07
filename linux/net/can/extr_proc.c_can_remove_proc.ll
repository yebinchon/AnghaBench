; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_proc.c_can_remove_proc.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_proc.c_can_remove_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@CAN_PROC_VERSION = common dso_local global i8* null, align 8
@CAN_PROC_STATS = common dso_local global i8* null, align 8
@CAN_PROC_RESET_STATS = common dso_local global i8* null, align 8
@CAN_PROC_RCVLIST_ERR = common dso_local global i8* null, align 8
@CAN_PROC_RCVLIST_ALL = common dso_local global i8* null, align 8
@CAN_PROC_RCVLIST_FIL = common dso_local global i8* null, align 8
@CAN_PROC_RCVLIST_INV = common dso_local global i8* null, align 8
@CAN_PROC_RCVLIST_EFF = common dso_local global i8* null, align 8
@CAN_PROC_RCVLIST_SFF = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"can\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_remove_proc(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %3 = load %struct.net*, %struct.net** %2, align 8
  %4 = getelementptr inbounds %struct.net, %struct.net* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 9
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i8*, i8** @CAN_PROC_VERSION, align 8
  %10 = load %struct.net*, %struct.net** %2, align 8
  %11 = getelementptr inbounds %struct.net, %struct.net* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @remove_proc_entry(i8* %9, i64 %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.net*, %struct.net** %2, align 8
  %17 = getelementptr inbounds %struct.net, %struct.net* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i8*, i8** @CAN_PROC_STATS, align 8
  %23 = load %struct.net*, %struct.net** %2, align 8
  %24 = getelementptr inbounds %struct.net, %struct.net* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @remove_proc_entry(i8* %22, i64 %26)
  br label %28

28:                                               ; preds = %21, %15
  %29 = load %struct.net*, %struct.net** %2, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i8*, i8** @CAN_PROC_RESET_STATS, align 8
  %36 = load %struct.net*, %struct.net** %2, align 8
  %37 = getelementptr inbounds %struct.net, %struct.net* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @remove_proc_entry(i8* %35, i64 %39)
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.net*, %struct.net** %2, align 8
  %43 = getelementptr inbounds %struct.net, %struct.net* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i8*, i8** @CAN_PROC_RCVLIST_ERR, align 8
  %49 = load %struct.net*, %struct.net** %2, align 8
  %50 = getelementptr inbounds %struct.net, %struct.net* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @remove_proc_entry(i8* %48, i64 %52)
  br label %54

54:                                               ; preds = %47, %41
  %55 = load %struct.net*, %struct.net** %2, align 8
  %56 = getelementptr inbounds %struct.net, %struct.net* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i8*, i8** @CAN_PROC_RCVLIST_ALL, align 8
  %62 = load %struct.net*, %struct.net** %2, align 8
  %63 = getelementptr inbounds %struct.net, %struct.net* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @remove_proc_entry(i8* %61, i64 %65)
  br label %67

67:                                               ; preds = %60, %54
  %68 = load %struct.net*, %struct.net** %2, align 8
  %69 = getelementptr inbounds %struct.net, %struct.net* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i8*, i8** @CAN_PROC_RCVLIST_FIL, align 8
  %75 = load %struct.net*, %struct.net** %2, align 8
  %76 = getelementptr inbounds %struct.net, %struct.net* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @remove_proc_entry(i8* %74, i64 %78)
  br label %80

80:                                               ; preds = %73, %67
  %81 = load %struct.net*, %struct.net** %2, align 8
  %82 = getelementptr inbounds %struct.net, %struct.net* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i8*, i8** @CAN_PROC_RCVLIST_INV, align 8
  %88 = load %struct.net*, %struct.net** %2, align 8
  %89 = getelementptr inbounds %struct.net, %struct.net* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @remove_proc_entry(i8* %87, i64 %91)
  br label %93

93:                                               ; preds = %86, %80
  %94 = load %struct.net*, %struct.net** %2, align 8
  %95 = getelementptr inbounds %struct.net, %struct.net* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load i8*, i8** @CAN_PROC_RCVLIST_EFF, align 8
  %101 = load %struct.net*, %struct.net** %2, align 8
  %102 = getelementptr inbounds %struct.net, %struct.net* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @remove_proc_entry(i8* %100, i64 %104)
  br label %106

106:                                              ; preds = %99, %93
  %107 = load %struct.net*, %struct.net** %2, align 8
  %108 = getelementptr inbounds %struct.net, %struct.net* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i8*, i8** @CAN_PROC_RCVLIST_SFF, align 8
  %114 = load %struct.net*, %struct.net** %2, align 8
  %115 = getelementptr inbounds %struct.net, %struct.net* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @remove_proc_entry(i8* %113, i64 %117)
  br label %119

119:                                              ; preds = %112, %106
  %120 = load %struct.net*, %struct.net** %2, align 8
  %121 = getelementptr inbounds %struct.net, %struct.net* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.net*, %struct.net** %2, align 8
  %127 = getelementptr inbounds %struct.net, %struct.net* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %125, %119
  ret void
}

declare dso_local i32 @remove_proc_entry(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
