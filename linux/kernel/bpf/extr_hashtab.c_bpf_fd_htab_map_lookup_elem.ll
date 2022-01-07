; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_hashtab.c_bpf_fd_htab_map_lookup_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_hashtab.c_bpf_fd_htab_map_lookup_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@ENOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_fd_htab_map_lookup_elem(%struct.bpf_map* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = icmp ne i32 (i32)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %43

19:                                               ; preds = %3
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8** @htab_map_lookup_elem(%struct.bpf_map* %21, i8* %22)
  store i8** %23, i8*** %8, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %28 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @READ_ONCE(i8* %33)
  %35 = call i32 %31(i32 %34)
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %40

37:                                               ; preds = %19
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %26
  %41 = call i32 (...) @rcu_read_unlock()
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8** @htab_map_lookup_elem(%struct.bpf_map*, i8*) #1

declare dso_local i32 @READ_ONCE(i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
