; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_snd_bebob_stream_reserve_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_snd_bebob_stream_reserve_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i64, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.snd_bebob*, i32*)*, {}* }

@.str = private unnamed_addr constant [31 x i8] c"fail to set sampling rate: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_bebob_stream_reserve_duplex(%struct.snd_bebob* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_bebob*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %10 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %11 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %10, i32 0, i32 2
  %12 = call i32 @check_connection_used_by_others(%struct.snd_bebob* %9, i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %117

17:                                               ; preds = %2
  %18 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %19 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %18, i32 0, i32 5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.snd_bebob*, i32*)*, i32 (%struct.snd_bebob*, i32*)** %23, align 8
  %25 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %26 = call i32 %24(%struct.snd_bebob* %25, i32* %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %117

31:                                               ; preds = %17
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %42 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %41, i32 0, i32 7
  %43 = call i32 @amdtp_domain_stop(i32* %42)
  %44 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %45 = call i32 @break_both_connections(%struct.snd_bebob* %44)
  %46 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %47 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %46, i32 0, i32 1
  %48 = call i32 @cmp_connection_release(i32* %47)
  %49 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %50 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %49, i32 0, i32 6
  %51 = call i32 @cmp_connection_release(i32* %50)
  br label %52

52:                                               ; preds = %40, %36
  %53 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %54 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %116

61:                                               ; preds = %57, %52
  %62 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %63 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %62, i32 0, i32 5
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = bitcast {}** %67 to i32 (%struct.snd_bebob*, i32)**
  %69 = load i32 (%struct.snd_bebob*, i32)*, i32 (%struct.snd_bebob*, i32)** %68, align 8
  %70 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 %69(%struct.snd_bebob* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %61
  %76 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %77 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %76, i32 0, i32 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %117

83:                                               ; preds = %61
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @get_formation_index(i32 %84, i32* %8)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %117

90:                                               ; preds = %83
  %91 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %92 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %93 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %92, i32 0, i32 3
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @keep_resources(%struct.snd_bebob* %91, i32* %93, i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %117

101:                                              ; preds = %90
  %102 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %103 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %104 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %103, i32 0, i32 2
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @keep_resources(%struct.snd_bebob* %102, i32* %104, i32 %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %112 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %111, i32 0, i32 1
  %113 = call i32 @cmp_connection_release(i32* %112)
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %117

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115, %57
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %110, %99, %88, %75, %29, %15
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @check_connection_used_by_others(%struct.snd_bebob*, i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @break_both_connections(%struct.snd_bebob*) #1

declare dso_local i32 @cmp_connection_release(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @get_formation_index(i32, i32*) #1

declare dso_local i32 @keep_resources(%struct.snd_bebob*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
