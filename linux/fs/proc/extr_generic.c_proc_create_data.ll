; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_create_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_create_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { %struct.file_operations* }
%struct.file_operations = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_dir_entry* @proc_create_data(i8* %0, i32 %1, %struct.proc_dir_entry* %2, %struct.file_operations* %3, i8* %4) #0 {
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc_dir_entry*, align 8
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.proc_dir_entry*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %9, align 8
  store %struct.file_operations* %3, %struct.file_operations** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %14 = icmp eq %struct.file_operations* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = call %struct.proc_dir_entry* @proc_create_reg(i8* %17, i32 %18, %struct.proc_dir_entry** %9, i8* %19)
  store %struct.proc_dir_entry* %20, %struct.proc_dir_entry** %12, align 8
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  %22 = icmp ne %struct.proc_dir_entry* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %6, align 8
  br label %31

24:                                               ; preds = %5
  %25 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %26 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  %27 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %26, i32 0, i32 0
  store %struct.file_operations* %25, %struct.file_operations** %27, align 8
  %28 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %29 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  %30 = call %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* %28, %struct.proc_dir_entry* %29)
  store %struct.proc_dir_entry* %30, %struct.proc_dir_entry** %6, align 8
  br label %31

31:                                               ; preds = %24, %23
  %32 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  ret %struct.proc_dir_entry* %32
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.proc_dir_entry* @proc_create_reg(i8*, i32, %struct.proc_dir_entry**, i8*) #1

declare dso_local %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry*, %struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
