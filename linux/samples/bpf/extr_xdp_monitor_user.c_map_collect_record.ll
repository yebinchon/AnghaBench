; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_map_collect_record.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_user.c_map_collect_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.datarec = type { i64, i64, i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ERR: bpf_map_lookup_elem failed key:0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.record*)* @map_collect_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_collect_record(i32 %0, i32 %1, %struct.record* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.record*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.record* %2, %struct.record** %7, align 8
  %17 = call i32 (...) @bpf_num_possible_cpus()
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca %struct.datarec, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @bpf_map_lookup_elem(i32 %22, i32* %6, %struct.datarec* %21)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %134

29:                                               ; preds = %3
  %30 = call i32 (...) @gettime()
  %31 = load %struct.record*, %struct.record** %7, align 8
  %32 = getelementptr inbounds %struct.record, %struct.record* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %114, %29
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %117

37:                                               ; preds = %33
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.datarec, %struct.datarec* %21, i64 %39
  %41 = getelementptr inbounds %struct.datarec, %struct.datarec* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.record*, %struct.record** %7, align 8
  %44 = getelementptr inbounds %struct.record, %struct.record* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i64 %42, i64* %49, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.datarec, %struct.datarec* %21, i64 %51
  %53 = getelementptr inbounds %struct.datarec, %struct.datarec* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr i8, i8* %55, i64 %54
  store i8* %56, i8** %11, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.datarec, %struct.datarec* %21, i64 %58
  %60 = getelementptr inbounds %struct.datarec, %struct.datarec* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 16
  %62 = load %struct.record*, %struct.record** %7, align 8
  %63 = getelementptr inbounds %struct.record, %struct.record* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i64 %61, i64* %68, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.datarec, %struct.datarec* %21, i64 %70
  %72 = getelementptr inbounds %struct.datarec, %struct.datarec* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 16
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr i8, i8* %74, i64 %73
  store i8* %75, i8** %12, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.datarec, %struct.datarec* %21, i64 %77
  %79 = getelementptr inbounds %struct.datarec, %struct.datarec* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.record*, %struct.record** %7, align 8
  %82 = getelementptr inbounds %struct.record, %struct.record* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i64 %80, i64* %87, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.datarec, %struct.datarec* %21, i64 %89
  %91 = getelementptr inbounds %struct.datarec, %struct.datarec* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr i8, i8* %93, i64 %92
  store i8* %94, i8** %13, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.datarec, %struct.datarec* %21, i64 %96
  %98 = getelementptr inbounds %struct.datarec, %struct.datarec* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 16
  %100 = load %struct.record*, %struct.record** %7, align 8
  %101 = getelementptr inbounds %struct.record, %struct.record* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i64 %99, i64* %106, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.datarec, %struct.datarec* %21, i64 %108
  %110 = getelementptr inbounds %struct.datarec, %struct.datarec* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 16
  %112 = load i8*, i8** %14, align 8
  %113 = getelementptr i8, i8* %112, i64 %111
  store i8* %113, i8** %14, align 8
  br label %114

114:                                              ; preds = %37
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %33

117:                                              ; preds = %33
  %118 = load i8*, i8** %11, align 8
  %119 = load %struct.record*, %struct.record** %7, align 8
  %120 = getelementptr inbounds %struct.record, %struct.record* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  store i8* %118, i8** %121, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load %struct.record*, %struct.record** %7, align 8
  %124 = getelementptr inbounds %struct.record, %struct.record* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  store i8* %122, i8** %125, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = load %struct.record*, %struct.record** %7, align 8
  %128 = getelementptr inbounds %struct.record, %struct.record* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load %struct.record*, %struct.record** %7, align 8
  %132 = getelementptr inbounds %struct.record, %struct.record* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %134

134:                                              ; preds = %117, %25
  %135 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @bpf_num_possible_cpus(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @bpf_map_lookup_elem(i32, i32*, %struct.datarec*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @gettime(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
