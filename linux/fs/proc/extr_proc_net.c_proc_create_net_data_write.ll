; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_net.c_proc_create_net_data_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_net.c_proc_create_net_data_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32, i32, %struct.seq_operations*, i32* }
%struct.seq_operations = type { i32 }

@proc_net_seq_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_dir_entry* @proc_create_net_data_write(i8* %0, i32 %1, %struct.proc_dir_entry* %2, %struct.seq_operations* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.proc_dir_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.proc_dir_entry*, align 8
  %12 = alloca %struct.seq_operations*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.proc_dir_entry*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %11, align 8
  store %struct.seq_operations* %3, %struct.seq_operations** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i8*, i8** %15, align 8
  %20 = call %struct.proc_dir_entry* @proc_create_reg(i8* %17, i32 %18, %struct.proc_dir_entry** %11, i8* %19)
  store %struct.proc_dir_entry* %20, %struct.proc_dir_entry** %16, align 8
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %16, align 8
  %22 = icmp ne %struct.proc_dir_entry* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %7
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %8, align 8
  br label %41

24:                                               ; preds = %7
  %25 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %16, align 8
  %26 = call i32 @pde_force_lookup(%struct.proc_dir_entry* %25)
  %27 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %16, align 8
  %28 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %27, i32 0, i32 3
  store i32* @proc_net_seq_fops, i32** %28, align 8
  %29 = load %struct.seq_operations*, %struct.seq_operations** %12, align 8
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %16, align 8
  %31 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %30, i32 0, i32 2
  store %struct.seq_operations* %29, %struct.seq_operations** %31, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %16, align 8
  %34 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %16, align 8
  %37 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %11, align 8
  %39 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %16, align 8
  %40 = call %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* %38, %struct.proc_dir_entry* %39)
  store %struct.proc_dir_entry* %40, %struct.proc_dir_entry** %8, align 8
  br label %41

41:                                               ; preds = %24, %23
  %42 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  ret %struct.proc_dir_entry* %42
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
