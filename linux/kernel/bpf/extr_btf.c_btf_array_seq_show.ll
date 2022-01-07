; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_array_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_array_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32 }
%struct.seq_file = type { i32 }
%struct.btf_array = type { i64, i64 }
%struct.btf_kind_operations = type { i32 (%struct.btf.0*, %struct.btf_type*, i64, i8*, i32, %struct.seq_file*)* }
%struct.btf.0 = type opaque

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf*, %struct.btf_type*, i64, i8*, i32, %struct.seq_file*)* @btf_array_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_array_seq_show(%struct.btf* %0, %struct.btf_type* %1, i64 %2, i8* %3, i32 %4, %struct.seq_file* %5) #0 {
  %7 = alloca %struct.btf*, align 8
  %8 = alloca %struct.btf_type*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.seq_file*, align 8
  %13 = alloca %struct.btf_array*, align 8
  %14 = alloca %struct.btf_kind_operations*, align 8
  %15 = alloca %struct.btf_type*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.btf* %0, %struct.btf** %7, align 8
  store %struct.btf_type* %1, %struct.btf_type** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.seq_file* %5, %struct.seq_file** %12, align 8
  %19 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %20 = call %struct.btf_array* @btf_type_array(%struct.btf_type* %19)
  store %struct.btf_array* %20, %struct.btf_array** %13, align 8
  %21 = load %struct.btf_array*, %struct.btf_array** %13, align 8
  %22 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %18, align 8
  %24 = load %struct.btf*, %struct.btf** %7, align 8
  %25 = call %struct.btf_type* @btf_type_id_size(%struct.btf* %24, i64* %18, i64* %17)
  store %struct.btf_type* %25, %struct.btf_type** %15, align 8
  %26 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %27 = call %struct.btf_kind_operations* @btf_type_ops(%struct.btf_type* %26)
  store %struct.btf_kind_operations* %27, %struct.btf_kind_operations** %14, align 8
  %28 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %29 = call i32 @seq_puts(%struct.seq_file* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %16, align 8
  br label %30

30:                                               ; preds = %57, %6
  %31 = load i64, i64* %16, align 8
  %32 = load %struct.btf_array*, %struct.btf_array** %13, align 8
  %33 = getelementptr inbounds %struct.btf_array, %struct.btf_array* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load i64, i64* %16, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %41 = call i32 @seq_puts(%struct.seq_file* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.btf_kind_operations*, %struct.btf_kind_operations** %14, align 8
  %44 = getelementptr inbounds %struct.btf_kind_operations, %struct.btf_kind_operations* %43, i32 0, i32 0
  %45 = load i32 (%struct.btf.0*, %struct.btf_type*, i64, i8*, i32, %struct.seq_file*)*, i32 (%struct.btf.0*, %struct.btf_type*, i64, i8*, i32, %struct.seq_file*)** %44, align 8
  %46 = load %struct.btf*, %struct.btf** %7, align 8
  %47 = bitcast %struct.btf* %46 to %struct.btf.0*
  %48 = load %struct.btf_type*, %struct.btf_type** %15, align 8
  %49 = load i64, i64* %18, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %53 = call i32 %45(%struct.btf.0* %47, %struct.btf_type* %48, i64 %49, i8* %50, i32 %51, %struct.seq_file* %52)
  %54 = load i64, i64* %17, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr i8, i8* %55, i64 %54
  store i8* %56, i8** %10, align 8
  br label %57

57:                                               ; preds = %42
  %58 = load i64, i64* %16, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %16, align 8
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %62 = call i32 @seq_puts(%struct.seq_file* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.btf_array* @btf_type_array(%struct.btf_type*) #1

declare dso_local %struct.btf_type* @btf_type_id_size(%struct.btf*, i64*, i64*) #1

declare dso_local %struct.btf_kind_operations* @btf_type_ops(%struct.btf_type*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
