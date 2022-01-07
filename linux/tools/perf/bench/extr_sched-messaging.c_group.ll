; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_sched-messaging.c_group.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_sched-messaging.c_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sender_context = type { i32, i32*, i32, i32, i32*, i32 }
%struct.receiver_context = type { i32, i32*, i32, i32, i32*, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@nr_loops = common dso_local global i32 0, align 4
@receiver = common dso_local global i64 0, align 8
@thread_mode = common dso_local global i32 0, align 4
@sender = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sender_context*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca %struct.receiver_context*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = add i64 40, %15
  %17 = trunc i64 %16 to i32
  %18 = call %struct.sender_context* @malloc(i32 %17)
  store %struct.sender_context* %18, %struct.sender_context** %10, align 8
  %19 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %20 = icmp ne %struct.sender_context* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @err(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %87, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %90

29:                                               ; preds = %25
  %30 = call %struct.sender_context* @malloc(i32 40)
  %31 = bitcast %struct.sender_context* %30 to %struct.receiver_context*
  store %struct.receiver_context* %31, %struct.receiver_context** %12, align 8
  %32 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %33 = icmp ne %struct.receiver_context* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  %36 = call i32 @err(i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %39 = call i32 @fdpair(i32* %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @nr_loops, align 4
  %42 = mul i32 %40, %41
  %43 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %44 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %48 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %54 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %59 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %62 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %64 = bitcast %struct.receiver_context* %63 to %struct.sender_context*
  %65 = load i64, i64* @receiver, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @create_worker(%struct.sender_context* %64, i8* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %75 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  %80 = load i32, i32* @thread_mode, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %37
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @close(i32 %84)
  br label %86

86:                                               ; preds = %82, %37
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %25

90:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %115, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %98 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %101 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %104 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %106 = load i64, i64* @sender, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @create_worker(%struct.sender_context* %105, i8* %107)
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %110, %111
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %95
  %116 = load i32, i32* %9, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %91

118:                                              ; preds = %91
  %119 = load i32, i32* @thread_mode, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %139, label %121

121:                                              ; preds = %118
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %135, %121
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %128 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @close(i32 %133)
  br label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %9, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %122

138:                                              ; preds = %122
  br label %139

139:                                              ; preds = %138, %118
  %140 = load i32, i32* %6, align 4
  %141 = mul i32 %140, 2
  ret i32 %141
}

declare dso_local %struct.sender_context* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fdpair(i32*) #1

declare dso_local i32 @create_worker(%struct.sender_context*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
