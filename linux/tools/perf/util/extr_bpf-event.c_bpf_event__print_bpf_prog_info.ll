; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-event.c_bpf_event__print_bpf_prog_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-event.c_bpf_event__print_bpf_prog_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_info = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.perf_env = type { i32 }
%struct.btf = type { i32 }
%struct.btf_node = type { i32, i64 }

@KSYM_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"# bpf_prog_info %u: %s addr 0x%llx size %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"# bpf_prog_info %u:\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"# \09sub_prog %u: %s addr 0x%llx size %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_event__print_bpf_prog_info(%struct.bpf_prog_info* %0, %struct.perf_env* %1, i32* %2) #0 {
  %4 = alloca %struct.bpf_prog_info*, align 8
  %5 = alloca %struct.perf_env*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.btf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.btf_node*, align 8
  store %struct.bpf_prog_info* %0, %struct.bpf_prog_info** %4, align 8
  store %struct.perf_env* %1, %struct.perf_env** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %4, align 8
  %17 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %7, align 8
  %20 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %4, align 8
  %21 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %8, align 8
  %24 = load i32, i32* @KSYM_NAME_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  store %struct.btf* null, %struct.btf** %11, align 8
  %28 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %4, align 8
  %29 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %4, align 8
  %33 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %4, align 8
  %39 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %3
  store i32 1, i32* %14, align 4
  br label %118

43:                                               ; preds = %36
  %44 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %4, align 8
  %45 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.perf_env*, %struct.perf_env** %5, align 8
  %50 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %4, align 8
  %51 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.btf_node* @perf_env__find_btf(%struct.perf_env* %49, i64 %52)
  store %struct.btf_node* %53, %struct.btf_node** %15, align 8
  %54 = load %struct.btf_node*, %struct.btf_node** %15, align 8
  %55 = icmp ne %struct.btf_node* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load %struct.btf_node*, %struct.btf_node** %15, align 8
  %58 = getelementptr inbounds %struct.btf_node, %struct.btf_node* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = load %struct.btf_node*, %struct.btf_node** %15, align 8
  %62 = getelementptr inbounds %struct.btf_node, %struct.btf_node* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.btf* @btf__new(i32* %60, i32 %63)
  store %struct.btf* %64, %struct.btf** %11, align 8
  br label %65

65:                                               ; preds = %56, %48
  br label %66

66:                                               ; preds = %65, %43
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i32, i32* @KSYM_NAME_LEN, align 4
  %71 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %4, align 8
  %72 = load %struct.btf*, %struct.btf** %11, align 8
  %73 = call i32 @synthesize_bpf_prog_name(i8* %27, i32 %70, %struct.bpf_prog_info* %71, %struct.btf* %72, i32 0)
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %4, align 8
  %76 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %77, i8* %27, i32 %80, i32 %83)
  store i32 1, i32* %14, align 4
  br label %118

85:                                               ; preds = %66
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %4, align 8
  %88 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %114, %85
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %91
  %96 = load i32, i32* @KSYM_NAME_LEN, align 4
  %97 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %4, align 8
  %98 = load %struct.btf*, %struct.btf** %11, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @synthesize_bpf_prog_name(i8* %27, i32 %96, %struct.bpf_prog_info* %97, %struct.btf* %98, i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %102, i8* %27, i32 %107, i32 %112)
  br label %114

114:                                              ; preds = %95
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %91

117:                                              ; preds = %91
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %117, %69, %42
  %119 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %14, align 4
  switch i32 %120, label %122 [
    i32 0, label %121
    i32 1, label %121
  ]

121:                                              ; preds = %118, %118
  ret void

122:                                              ; preds = %118
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.btf_node* @perf_env__find_btf(%struct.perf_env*, i64) #2

declare dso_local %struct.btf* @btf__new(i32*, i32) #2

declare dso_local i32 @synthesize_bpf_prog_name(i8*, i32, %struct.bpf_prog_info*, %struct.btf*, i32) #2

declare dso_local i32 @fprintf(i32*, i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
