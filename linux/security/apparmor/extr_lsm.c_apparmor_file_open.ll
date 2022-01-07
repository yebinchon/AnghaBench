; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_file_open.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.file = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.aa_file_ctx = type { i32 }
%struct.aa_label = type { i32 }
%struct.inode = type { i32, i32 }
%struct.path_cond = type { i32, i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@MAY_EXEC = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@AA_EXEC_MMAP = common dso_local global i32 0, align 4
@OP_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @apparmor_file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_file_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.aa_file_ctx*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.path_cond, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.aa_file_ctx* @file_ctx(%struct.file* %9)
  store %struct.aa_file_ctx* %10, %struct.aa_file_ctx** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @path_mediated_fs(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* @MAY_EXEC, align 4
  %25 = load i32, i32* @MAY_READ, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AA_EXEC_MMAP, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.aa_file_ctx*, %struct.aa_file_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.aa_file_ctx, %struct.aa_file_ctx* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %2, align 4
  br label %65

31:                                               ; preds = %18
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.aa_label* @aa_get_newest_cred_label(i32 %34)
  store %struct.aa_label* %35, %struct.aa_label** %5, align 8
  %36 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %37 = call i32 @unconfined(%struct.aa_label* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %31
  %40 = load %struct.file*, %struct.file** %3, align 8
  %41 = call %struct.inode* @file_inode(%struct.file* %40)
  store %struct.inode* %41, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %8, i32 0, i32 0
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %42, align 4
  %46 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %8, i32 0, i32 1
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %46, align 4
  %50 = load i32, i32* @OP_OPEN, align 4
  %51 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %52 = load %struct.file*, %struct.file** %3, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  %54 = load %struct.file*, %struct.file** %3, align 8
  %55 = call i32 @aa_map_file_to_perms(%struct.file* %54)
  %56 = call i32 @aa_path_perm(i32 %50, %struct.aa_label* %51, %struct.TYPE_4__* %53, i32 0, i32 %55, %struct.path_cond* %8)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.file*, %struct.file** %3, align 8
  %58 = call i32 @aa_map_file_to_perms(%struct.file* %57)
  %59 = load %struct.aa_file_ctx*, %struct.aa_file_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.aa_file_ctx, %struct.aa_file_ctx* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %39, %31
  %62 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %63 = call i32 @aa_put_label(%struct.aa_label* %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %23, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.aa_file_ctx* @file_ctx(%struct.file*) #1

declare dso_local i32 @path_mediated_fs(i32) #1

declare dso_local %struct.aa_label* @aa_get_newest_cred_label(i32) #1

declare dso_local i32 @unconfined(%struct.aa_label*) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @aa_path_perm(i32, %struct.aa_label*, %struct.TYPE_4__*, i32, i32, %struct.path_cond*) #1

declare dso_local i32 @aa_map_file_to_perms(%struct.file*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
