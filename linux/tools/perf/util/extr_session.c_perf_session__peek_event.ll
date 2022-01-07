; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__peek_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_session__peek_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i64, i32, %struct.TYPE_3__, i32, %union.perf_event*, i64 }
%struct.TYPE_3__ = type { i64 }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.perf_sample = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@PERF_RECORD_USER_TYPE_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_session__peek_event(%struct.perf_session* %0, i64 %1, i8* %2, i64 %3, %union.perf_event** %4, %struct.perf_sample* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_session*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.perf_event**, align 8
  %13 = alloca %struct.perf_sample*, align 8
  %14 = alloca %union.perf_event*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %union.perf_event** %4, %union.perf_event*** %12, align 8
  store %struct.perf_sample* %5, %struct.perf_sample** %13, align 8
  %18 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %19 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %6
  %23 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %24 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %31 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %35 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %34, i32 0, i32 4
  %36 = load %union.perf_event*, %union.perf_event** %35, align 8
  %37 = getelementptr inbounds %union.perf_event, %union.perf_event* %36, i64 %33
  store %union.perf_event* %37, %union.perf_event** %14, align 8
  br label %123

38:                                               ; preds = %22, %6
  %39 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %40 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @perf_data__is_pipe(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 -1, i32* %7, align 4
  br label %145

45:                                               ; preds = %38
  %46 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %47 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @perf_data__fd(i32 %48)
  store i32 %49, i32* %17, align 4
  store i64 4, i64* %15, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 -1, i32* %7, align 4
  br label %145

54:                                               ; preds = %45
  %55 = load i32, i32* %17, align 4
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* @SEEK_SET, align 4
  %58 = call i64 @lseek(i32 %55, i64 %56, i32 %57)
  %59 = icmp eq i64 %58, -1
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %17, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i64 @readn(i32 %61, i8* %62, i64 %63)
  %65 = load i64, i64* %15, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60, %54
  store i32 -1, i32* %7, align 4
  br label %145

68:                                               ; preds = %60
  %69 = load i8*, i8** %10, align 8
  %70 = bitcast i8* %69 to %union.perf_event*
  store %union.perf_event* %70, %union.perf_event** %14, align 8
  %71 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %72 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %union.perf_event*, %union.perf_event** %14, align 8
  %78 = bitcast %union.perf_event* %77 to %struct.TYPE_4__*
  %79 = call i32 @perf_event_header__bswap(%struct.TYPE_4__* %78)
  br label %80

80:                                               ; preds = %76, %68
  %81 = load %union.perf_event*, %union.perf_event** %14, align 8
  %82 = bitcast %union.perf_event* %81 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load %union.perf_event*, %union.perf_event** %14, align 8
  %89 = bitcast %union.perf_event* %88 to %struct.TYPE_4__*
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87, %80
  store i32 -1, i32* %7, align 4
  br label %145

95:                                               ; preds = %87
  %96 = load %union.perf_event*, %union.perf_event** %14, align 8
  %97 = bitcast %union.perf_event* %96 to %struct.TYPE_4__*
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %15, align 8
  %101 = sub i64 %99, %100
  store i64 %101, i64* %16, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = load i64, i64* %16, align 8
  %105 = call i64 @readn(i32 %102, i8* %103, i64 %104)
  %106 = load i64, i64* %16, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  store i32 -1, i32* %7, align 4
  br label %145

109:                                              ; preds = %95
  %110 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %111 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %union.perf_event*, %union.perf_event** %14, align 8
  %117 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %118 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @perf_evlist__sample_id_all(i32 %119)
  %121 = call i32 @event_swap(%union.perf_event* %116, i32 %120)
  br label %122

122:                                              ; preds = %115, %109
  br label %123

123:                                              ; preds = %122, %28
  %124 = load %struct.perf_sample*, %struct.perf_sample** %13, align 8
  %125 = icmp ne %struct.perf_sample* %124, null
  br i1 %125, label %126, label %142

126:                                              ; preds = %123
  %127 = load %union.perf_event*, %union.perf_event** %14, align 8
  %128 = bitcast %union.perf_event* %127 to %struct.TYPE_4__*
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @PERF_RECORD_USER_TYPE_START, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %126
  %134 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %135 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %union.perf_event*, %union.perf_event** %14, align 8
  %138 = load %struct.perf_sample*, %struct.perf_sample** %13, align 8
  %139 = call i64 @perf_evlist__parse_sample(i32 %136, %union.perf_event* %137, %struct.perf_sample* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  store i32 -1, i32* %7, align 4
  br label %145

142:                                              ; preds = %133, %126, %123
  %143 = load %union.perf_event*, %union.perf_event** %14, align 8
  %144 = load %union.perf_event**, %union.perf_event*** %12, align 8
  store %union.perf_event* %143, %union.perf_event** %144, align 8
  store i32 0, i32* %7, align 4
  br label %145

145:                                              ; preds = %142, %141, %108, %94, %67, %53, %44
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i64 @perf_data__is_pipe(i32) #1

declare dso_local i32 @perf_data__fd(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @readn(i32, i8*, i64) #1

declare dso_local i32 @perf_event_header__bswap(%struct.TYPE_4__*) #1

declare dso_local i32 @event_swap(%union.perf_event*, i32) #1

declare dso_local i32 @perf_evlist__sample_id_all(i32) #1

declare dso_local i64 @perf_evlist__parse_sample(i32, %union.perf_event*, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
