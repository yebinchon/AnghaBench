; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_arraymap.c_array_map_seq_show_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_arraymap.c_array_map_seq_show_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32, i32, i64 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%u: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_map*, i8*, %struct.seq_file*)* @array_map_seq_show_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_map_seq_show_elem(%struct.bpf_map* %0, i8* %1, %struct.seq_file* %2) #0 {
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i8*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.seq_file* %2, %struct.seq_file** %6, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @array_map_lookup_elem(%struct.bpf_map* %9, i8* %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 (...) @rcu_read_unlock()
  br label %40

16:                                               ; preds = %3
  %17 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %18 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %29 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %32 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %36 = call i32 @btf_type_seq_show(i32 %30, i32 %33, i8* %34, %struct.seq_file* %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %38 = call i32 @seq_puts(%struct.seq_file* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 (...) @rcu_read_unlock()
  br label %40

40:                                               ; preds = %27, %14
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @array_map_lookup_elem(%struct.bpf_map*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @btf_type_seq_show(i32, i32, i8*, %struct.seq_file*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
