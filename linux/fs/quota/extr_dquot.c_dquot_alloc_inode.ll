; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dquot = type { i32 }
%struct.dquot_warn = type { i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i32 0, align 4
@dquot_srcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_alloc_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dquot**, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @MAXQUOTAS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca %struct.dquot_warn, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i32 @dquot_active(%struct.inode* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %122

19:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MAXQUOTAS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %14, i64 %27
  %29 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %20

33:                                               ; preds = %20
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = call %struct.dquot** @i_dquot(%struct.inode* %34)
  store %struct.dquot** %35, %struct.dquot*** %9, align 8
  %36 = call i32 @srcu_read_lock(i32* @dquot_srcu)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %104, %33
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MAXQUOTAS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %107

44:                                               ; preds = %40
  %45 = load %struct.dquot**, %struct.dquot*** %9, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dquot*, %struct.dquot** %45, i64 %47
  %49 = load %struct.dquot*, %struct.dquot** %48, align 8
  %50 = icmp ne %struct.dquot* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %104

52:                                               ; preds = %44
  %53 = load %struct.dquot**, %struct.dquot*** %9, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.dquot*, %struct.dquot** %53, i64 %55
  %57 = load %struct.dquot*, %struct.dquot** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %14, i64 %59
  %61 = call i32 @dquot_add_inodes(%struct.dquot* %57, i32 1, %struct.dquot_warn* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %52
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %99, %64
  %68 = load i32, i32* %4, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %67
  %71 = load %struct.dquot**, %struct.dquot*** %9, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.dquot*, %struct.dquot** %71, i64 %73
  %75 = load %struct.dquot*, %struct.dquot** %74, align 8
  %76 = icmp ne %struct.dquot* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %99

78:                                               ; preds = %70
  %79 = load %struct.dquot**, %struct.dquot*** %9, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.dquot*, %struct.dquot** %79, i64 %81
  %83 = load %struct.dquot*, %struct.dquot** %82, align 8
  %84 = getelementptr inbounds %struct.dquot, %struct.dquot* %83, i32 0, i32 0
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load %struct.dquot**, %struct.dquot*** %9, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.dquot*, %struct.dquot** %86, i64 %88
  %90 = load %struct.dquot*, %struct.dquot** %89, align 8
  %91 = call i32 @dquot_decr_inodes(%struct.dquot* %90, i32 1)
  %92 = load %struct.dquot**, %struct.dquot*** %9, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.dquot*, %struct.dquot** %92, i64 %94
  %96 = load %struct.dquot*, %struct.dquot** %95, align 8
  %97 = getelementptr inbounds %struct.dquot, %struct.dquot* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  br label %99

99:                                               ; preds = %78, %77
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %4, align 4
  br label %67

102:                                              ; preds = %67
  br label %108

103:                                              ; preds = %52
  br label %104

104:                                              ; preds = %103, %51
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %40

107:                                              ; preds = %40
  br label %108

108:                                              ; preds = %107, %102
  %109 = load %struct.inode*, %struct.inode** %3, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock(i32* %110)
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.dquot**, %struct.dquot*** %9, align 8
  %116 = call i32 @mark_all_dquot_dirty(%struct.dquot** %115)
  br label %117

117:                                              ; preds = %114, %108
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @srcu_read_unlock(i32* @dquot_srcu, i32 %118)
  %120 = call i32 @flush_warnings(%struct.dquot_warn* %14)
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %122

122:                                              ; preds = %117, %18
  %123 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dquot_active(%struct.inode*) #2

declare dso_local %struct.dquot** @i_dquot(%struct.inode*) #2

declare dso_local i32 @srcu_read_lock(i32*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @dquot_add_inodes(%struct.dquot*, i32, %struct.dquot_warn*) #2

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
