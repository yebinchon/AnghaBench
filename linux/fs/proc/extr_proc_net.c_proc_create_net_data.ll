; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_net.c_proc_create_net_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_net.c_proc_create_net_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32, %struct.seq_operations*, i32* }
%struct.seq_operations = type { i32 }

@proc_net_seq_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_dir_entry* @proc_create_net_data(i8* %0, i32 %1, %struct.proc_dir_entry* %2, %struct.seq_operations* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.proc_dir_entry*, align 8
  %11 = alloca %struct.seq_operations*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.proc_dir_entry*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %10, align 8
  store %struct.seq_operations* %3, %struct.seq_operations** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %13, align 8
  %18 = call %struct.proc_dir_entry* @proc_create_reg(i8* %15, i32 %16, %struct.proc_dir_entry** %10, i8* %17)
  store %struct.proc_dir_entry* %18, %struct.proc_dir_entry** %14, align 8
  %19 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %14, align 8
  %20 = icmp ne %struct.proc_dir_entry* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %7, align 8
  br label %36

22:                                               ; preds = %6
  %23 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %14, align 8
  %24 = call i32 @pde_force_lookup(%struct.proc_dir_entry* %23)
  %25 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %14, align 8
  %26 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %25, i32 0, i32 2
  store i32* @proc_net_seq_fops, i32** %26, align 8
  %27 = load %struct.seq_operations*, %struct.seq_operations** %11, align 8
  %28 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %14, align 8
  %29 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %28, i32 0, i32 1
  store %struct.seq_operations* %27, %struct.seq_operations** %29, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %14, align 8
  %32 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %34 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %14, align 8
  %35 = call %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* %33, %struct.proc_dir_entry* %34)
  store %struct.proc_dir_entry* %35, %struct.proc_dir_entry** %7, align 8
  br label %36

36:                                               ; preds = %22, %21
  %37 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  ret %struct.proc_dir_entry* %37
}

declare dso_local %struct.proc_dir_entry* @proc_create_reg(i8*, i32, %struct.proc_dir_entry**, i8*) #1

declare dso_local i32 @pde_force_lookup(%struct.proc_dir_entry*) #1

declare dso_local %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry*, %struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
