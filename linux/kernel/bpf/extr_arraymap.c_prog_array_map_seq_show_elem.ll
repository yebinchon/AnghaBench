; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_arraymap.c_prog_array_map_seq_show_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_arraymap.c_prog_array_map_seq_show_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%u: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_map*, i8*, %struct.seq_file*)* @prog_array_map_seq_show_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prog_array_map_seq_show_elem(%struct.bpf_map* %0, i8* %1, %struct.seq_file* %2) #0 {
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.seq_file* %2, %struct.seq_file** %6, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8** @array_map_lookup_elem(%struct.bpf_map* %11, i8* %12)
  store i8** %13, i8*** %7, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %3
  %17 = load i8**, i8*** %7, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @READ_ONCE(i8* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @prog_fd_array_sys_lookup_elem(i8* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %31 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %34 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %37 = call i32 @btf_type_seq_show(i32 %32, i32 %35, i32* %9, %struct.seq_file* %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %39 = call i32 @seq_puts(%struct.seq_file* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %22, %16
  br label %41

41:                                               ; preds = %40, %3
  %42 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8** @array_map_lookup_elem(%struct.bpf_map*, i8*) #1

declare dso_local i8* @READ_ONCE(i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @prog_fd_array_sys_lookup_elem(i8*) #1

declare dso_local i32 @btf_type_seq_show(i32, i32, i32*, %struct.seq_file*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
