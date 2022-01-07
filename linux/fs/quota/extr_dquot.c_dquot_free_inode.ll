; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_free_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dquot = type { i32 }
%struct.dquot_warn = type { i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@dquot_srcu = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dquot_free_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dquot**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %10 = load i32, i32* @MAXQUOTAS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca %struct.dquot_warn, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call i32 @dquot_active(%struct.inode* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %96

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call %struct.dquot** @i_dquot(%struct.inode* %19)
  store %struct.dquot** %20, %struct.dquot*** %6, align 8
  %21 = call i32 @srcu_read_lock(i32* @dquot_srcu)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %84, %18
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @MAXQUOTAS, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %87

29:                                               ; preds = %25
  %30 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %13, i64 %32
  %34 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.dquot**, %struct.dquot*** %6, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dquot*, %struct.dquot** %35, i64 %37
  %39 = load %struct.dquot*, %struct.dquot** %38, align 8
  %40 = icmp ne %struct.dquot* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  br label %84

42:                                               ; preds = %29
  %43 = load %struct.dquot**, %struct.dquot*** %6, align 8
  %44 = load i32, i32* %3, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dquot*, %struct.dquot** %43, i64 %45
  %47 = load %struct.dquot*, %struct.dquot** %46, align 8
  %48 = getelementptr inbounds %struct.dquot, %struct.dquot* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.dquot**, %struct.dquot*** %6, align 8
  %51 = load i32, i32* %3, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dquot*, %struct.dquot** %50, i64 %52
  %54 = load %struct.dquot*, %struct.dquot** %53, align 8
  %55 = call i32 @info_idq_free(%struct.dquot* %54, i32 1)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %42
  %60 = load i32, i32* %3, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %13, i64 %61
  %63 = load %struct.dquot**, %struct.dquot*** %6, align 8
  %64 = load i32, i32* %3, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.dquot*, %struct.dquot** %63, i64 %65
  %67 = load %struct.dquot*, %struct.dquot** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @prepare_warning(%struct.dquot_warn* %62, %struct.dquot* %67, i32 %68)
  br label %70

70:                                               ; preds = %59, %42
  %71 = load %struct.dquot**, %struct.dquot*** %6, align 8
  %72 = load i32, i32* %3, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.dquot*, %struct.dquot** %71, i64 %73
  %75 = load %struct.dquot*, %struct.dquot** %74, align 8
  %76 = call i32 @dquot_decr_inodes(%struct.dquot* %75, i32 1)
  %77 = load %struct.dquot**, %struct.dquot*** %6, align 8
  %78 = load i32, i32* %3, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.dquot*, %struct.dquot** %77, i64 %79
  %81 = load %struct.dquot*, %struct.dquot** %80, align 8
  %82 = getelementptr inbounds %struct.dquot, %struct.dquot* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock(i32* %82)
  br label %84

84:                                               ; preds = %70, %41
  %85 = load i32, i32* %3, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %25

87:                                               ; preds = %25
  %88 = load %struct.inode*, %struct.inode** %2, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.dquot**, %struct.dquot*** %6, align 8
  %92 = call i32 @mark_all_dquot_dirty(%struct.dquot** %91)
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @srcu_read_unlock(i32* @dquot_srcu, i32 %93)
  %95 = call i32 @flush_warnings(%struct.dquot_warn* %13)
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %87, %17
  %97 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %8, align 4
  switch i32 %98, label %100 [
    i32 0, label %99
    i32 1, label %99
  ]

99:                                               ; preds = %96, %96
  ret void

100:                                              ; preds = %96
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dquot_active(%struct.inode*) #2

declare dso_local %struct.dquot** @i_dquot(%struct.inode*) #2

declare dso_local i32 @srcu_read_lock(i32*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @info_idq_free(%struct.dquot*, i32) #2

declare dso_local i32 @prepare_warning(%struct.dquot_warn*, %struct.dquot*, i32) #2

declare dso_local i32 @dquot_decr_inodes(%struct.dquot*, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @mark_all_dquot_dirty(%struct.dquot**) #2

declare dso_local i32 @srcu_read_unlock(i32*, i32) #2

declare dso_local i32 @flush_warnings(%struct.dquot_warn*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
