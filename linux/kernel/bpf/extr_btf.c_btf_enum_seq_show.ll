; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_enum_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_enum_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32 }
%struct.seq_file = type { i32 }
%struct.btf_enum = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf*, %struct.btf_type*, i64, i8*, i32, %struct.seq_file*)* @btf_enum_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_enum_seq_show(%struct.btf* %0, %struct.btf_type* %1, i64 %2, i8* %3, i32 %4, %struct.seq_file* %5) #0 {
  %7 = alloca %struct.btf*, align 8
  %8 = alloca %struct.btf_type*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.seq_file*, align 8
  %13 = alloca %struct.btf_enum*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %7, align 8
  store %struct.btf_type* %1, %struct.btf_type** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.seq_file* %5, %struct.seq_file** %12, align 8
  %17 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %18 = call %struct.btf_enum* @btf_type_enum(%struct.btf_type* %17)
  store %struct.btf_enum* %18, %struct.btf_enum** %13, align 8
  %19 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %20 = call i64 @btf_type_vlen(%struct.btf_type* %19)
  store i64 %20, i64* %15, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  store i64 0, i64* %14, align 8
  br label %24

24:                                               ; preds = %47, %6
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* %15, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i32, i32* %16, align 4
  %30 = load %struct.btf_enum*, %struct.btf_enum** %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %30, i64 %31
  %33 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %29, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %38 = load %struct.btf*, %struct.btf** %7, align 8
  %39 = load %struct.btf_enum*, %struct.btf_enum** %13, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %39, i64 %40
  %42 = getelementptr inbounds %struct.btf_enum, %struct.btf_enum* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__btf_name_by_offset(%struct.btf* %38, i32 %43)
  %45 = call i32 @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %54

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %14, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %14, align 8
  br label %24

50:                                               ; preds = %24
  %51 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %36
  ret void
}

declare dso_local %struct.btf_enum* @btf_type_enum(%struct.btf_type*) #1

declare dso_local i64 @btf_type_vlen(%struct.btf_type*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @__btf_name_by_offset(%struct.btf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
