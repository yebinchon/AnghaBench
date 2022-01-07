; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_hashtab.c_bpf_fd_htab_map_update_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_hashtab.c_bpf_fd_htab_map_update_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i8*)*, i8* (%struct.bpf_map*, %struct.file*, i32)* }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_fd_htab_map_update_elem(%struct.bpf_map* %0, %struct.file* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_map*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %19 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i8* (%struct.bpf_map*, %struct.file*, i32)*, i8* (%struct.bpf_map*, %struct.file*, i32)** %21, align 8
  %23 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %24 = load %struct.file*, %struct.file** %8, align 8
  %25 = load i32, i32* %14, align 4
  %26 = call i8* %22(%struct.bpf_map* %23, %struct.file* %24, i32 %25)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i64 @IS_ERR(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @PTR_ERR(i8* %31)
  store i32 %32, i32* %6, align 4
  br label %50

33:                                               ; preds = %5
  %34 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @htab_map_update_elem(%struct.bpf_map* %34, i8* %35, i8** %12, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %42 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i8*)*, i32 (i8*)** %44, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 %45(i8* %46)
  br label %48

48:                                               ; preds = %40, %33
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %30
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @htab_map_update_elem(%struct.bpf_map*, i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
