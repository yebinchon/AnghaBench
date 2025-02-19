; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-event.c_perf_env__fetch_btf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-event.c_perf_env__fetch_btf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_env = type { i32 }
%struct.btf = type { i32 }
%struct.btf_node = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_env*, i8*, %struct.btf*)* @perf_env__fetch_btf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_env__fetch_btf(%struct.perf_env* %0, i8* %1, %struct.btf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_env*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.btf*, align 8
  %8 = alloca %struct.btf_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.perf_env* %0, %struct.perf_env** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.btf* %2, %struct.btf** %7, align 8
  %11 = load %struct.btf*, %struct.btf** %7, align 8
  %12 = call i8* @btf__get_raw_data(%struct.btf* %11, i8** %9)
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = getelementptr i8, i8* %13, i64 24
  %15 = call %struct.btf_node* @malloc(i8* %14)
  store %struct.btf_node* %15, %struct.btf_node** %8, align 8
  %16 = load %struct.btf_node*, %struct.btf_node** %8, align 8
  %17 = icmp ne %struct.btf_node* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %35

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.btf_node*, %struct.btf_node** %8, align 8
  %22 = getelementptr inbounds %struct.btf_node, %struct.btf_node* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.btf_node*, %struct.btf_node** %8, align 8
  %25 = getelementptr inbounds %struct.btf_node, %struct.btf_node* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.btf_node*, %struct.btf_node** %8, align 8
  %27 = getelementptr inbounds %struct.btf_node, %struct.btf_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @memcpy(i32 %28, i8* %29, i8* %30)
  %32 = load %struct.perf_env*, %struct.perf_env** %5, align 8
  %33 = load %struct.btf_node*, %struct.btf_node** %8, align 8
  %34 = call i32 @perf_env__insert_btf(%struct.perf_env* %32, %struct.btf_node* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %19, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i8* @btf__get_raw_data(%struct.btf*, i8**) #1

declare dso_local %struct.btf_node* @malloc(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i8*) #1

declare dso_local i32 @perf_env__insert_btf(%struct.perf_env*, %struct.btf_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
