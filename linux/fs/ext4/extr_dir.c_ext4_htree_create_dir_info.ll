; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_dir.c_ext4_htree_create_dir_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_dir.c_ext4_htree_create_dir_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_private_info = type { i32, i32 }
%struct.file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dir_private_info* (%struct.file*, i32)* @ext4_htree_create_dir_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dir_private_info* @ext4_htree_create_dir_info(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.dir_private_info*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dir_private_info*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dir_private_info* @kzalloc(i32 8, i32 %7)
  store %struct.dir_private_info* %8, %struct.dir_private_info** %6, align 8
  %9 = load %struct.dir_private_info*, %struct.dir_private_info** %6, align 8
  %10 = icmp ne %struct.dir_private_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.dir_private_info* null, %struct.dir_private_info** %3, align 8
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @pos2maj_hash(%struct.file* %13, i32 %14)
  %16 = load %struct.dir_private_info*, %struct.dir_private_info** %6, align 8
  %17 = getelementptr inbounds %struct.dir_private_info, %struct.dir_private_info* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @pos2min_hash(%struct.file* %18, i32 %19)
  %21 = load %struct.dir_private_info*, %struct.dir_private_info** %6, align 8
  %22 = getelementptr inbounds %struct.dir_private_info, %struct.dir_private_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.dir_private_info*, %struct.dir_private_info** %6, align 8
  store %struct.dir_private_info* %23, %struct.dir_private_info** %3, align 8
  br label %24

24:                                               ; preds = %12, %11
  %25 = load %struct.dir_private_info*, %struct.dir_private_info** %3, align 8
  ret %struct.dir_private_info* %25
}

declare dso_local %struct.dir_private_info* @kzalloc(i32, i32) #1

declare dso_local i32 @pos2maj_hash(%struct.file*, i32) #1

declare dso_local i32 @pos2min_hash(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
