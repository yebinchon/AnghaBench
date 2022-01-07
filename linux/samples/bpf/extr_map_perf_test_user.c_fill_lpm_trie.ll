; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_map_perf_test_user.c_fill_lpm_trie.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_map_perf_test_user.c_fill_lpm_trie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lpm_trie_key = type { i32, i32* }

@map_fd = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fill_lpm_trie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_lpm_trie() #0 {
  %1 = alloca %struct.bpf_lpm_trie_key*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  %5 = call %struct.bpf_lpm_trie_key* @alloca(i32 20)
  store %struct.bpf_lpm_trie_key* %5, %struct.bpf_lpm_trie_key** %1, align 8
  %6 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %7 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %6, i32 0, i32 0
  store i32 32, i32* %7, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %50, %0
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 512
  br i1 %10, label %11, label %53

11:                                               ; preds = %8
  %12 = call i32 (...) @rand()
  %13 = srem i32 %12, 33
  %14 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %15 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = call i32 (...) @rand()
  %17 = and i32 %16, 255
  %18 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %19 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = call i32 (...) @rand()
  %23 = and i32 %22, 255
  %24 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %25 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %23, i32* %27, align 4
  %28 = call i32 (...) @rand()
  %29 = and i32 %28, 255
  %30 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %31 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 %29, i32* %33, align 4
  %34 = call i32 (...) @rand()
  %35 = and i32 %34, 255
  %36 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %37 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 %35, i32* %39, align 4
  %40 = load i32*, i32** @map_fd, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %44 = call i32 @bpf_map_update_elem(i32 %42, %struct.bpf_lpm_trie_key* %43, i64* %2, i32 0)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  br label %50

50:                                               ; preds = %11
  %51 = load i32, i32* %3, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %8

53:                                               ; preds = %8
  %54 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %55 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %54, i32 0, i32 0
  store i32 32, i32* %55, align 8
  %56 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %57 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 192, i32* %59, align 4
  %60 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %61 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 168, i32* %63, align 4
  %64 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %65 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 0, i32* %67, align 4
  %68 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %69 = getelementptr inbounds %struct.bpf_lpm_trie_key, %struct.bpf_lpm_trie_key* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 1, i32* %71, align 4
  store i64 128, i64* %2, align 8
  %72 = load i32*, i32** @map_fd, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bpf_lpm_trie_key*, %struct.bpf_lpm_trie_key** %1, align 8
  %76 = call i32 @bpf_map_update_elem(i32 %74, %struct.bpf_lpm_trie_key* %75, i64* %2, i32 0)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  ret void
}

declare dso_local %struct.bpf_lpm_trie_key* @alloca(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @bpf_map_update_elem(i32, %struct.bpf_lpm_trie_key*, i64*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
