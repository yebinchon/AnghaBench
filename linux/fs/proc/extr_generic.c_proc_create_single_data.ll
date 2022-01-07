; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_create_single_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_create_single_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 (%struct.seq_file*, i8*)*, i32* }
%struct.seq_file = type opaque
%struct.seq_file.0 = type opaque

@proc_single_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_dir_entry* @proc_create_single_data(i8* %0, i32 %1, %struct.proc_dir_entry* %2, i32 (%struct.seq_file.0*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc_dir_entry*, align 8
  %10 = alloca i32 (%struct.seq_file.0*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.proc_dir_entry*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %9, align 8
  store i32 (%struct.seq_file.0*, i8*)* %3, i32 (%struct.seq_file.0*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %11, align 8
  %16 = call %struct.proc_dir_entry* @proc_create_reg(i8* %13, i32 %14, %struct.proc_dir_entry** %9, i8* %15)
  store %struct.proc_dir_entry* %16, %struct.proc_dir_entry** %12, align 8
  %17 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  %18 = icmp ne %struct.proc_dir_entry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %6, align 8
  br label %30

20:                                               ; preds = %5
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  %22 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %21, i32 0, i32 1
  store i32* @proc_single_fops, i32** %22, align 8
  %23 = load i32 (%struct.seq_file.0*, i8*)*, i32 (%struct.seq_file.0*, i8*)** %10, align 8
  %24 = bitcast i32 (%struct.seq_file.0*, i8*)* %23 to i32 (%struct.seq_file*, i8*)*
  %25 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  %26 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %25, i32 0, i32 0
  store i32 (%struct.seq_file*, i8*)* %24, i32 (%struct.seq_file*, i8*)** %26, align 8
  %27 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %28 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  %29 = call %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* %27, %struct.proc_dir_entry* %28)
  store %struct.proc_dir_entry* %29, %struct.proc_dir_entry** %6, align 8
  br label %30

30:                                               ; preds = %20, %19
  %31 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  ret %struct.proc_dir_entry* %31
}

declare dso_local %struct.proc_dir_entry* @proc_create_reg(i8*, i32, %struct.proc_dir_entry**, i8*) #1

declare dso_local %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry*, %struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
