; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c___dquot_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c___dquot_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dquot = type { i32 }
%struct.dquot_warn = type { i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@DQUOT_SPACE_RESERVE = common dso_local global i32 0, align 4
@dquot_srcu = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dquot_free_space(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dquot**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @MAXQUOTAS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.dquot_warn, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @DQUOT_SPACE_RESERVE, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @dquot_active(%struct.inode* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call i32* @inode_reserved_space(%struct.inode* %33)
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  br label %44

40:                                               ; preds = %25
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @inode_sub_bytes(%struct.inode* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %28
  store i32 1, i32* %13, align 4
  br label %155

45:                                               ; preds = %3
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call %struct.dquot** @i_dquot(%struct.inode* %46)
  store %struct.dquot** %47, %struct.dquot*** %10, align 8
  %48 = call i32 @srcu_read_lock(i32* @dquot_srcu)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = call i32 @spin_lock(i32* %50)
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %125, %45
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MAXQUOTAS, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %128

56:                                               ; preds = %52
  %57 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %18, i64 %59
  %61 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.dquot**, %struct.dquot*** %10, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.dquot*, %struct.dquot** %62, i64 %64
  %66 = load %struct.dquot*, %struct.dquot** %65, align 8
  %67 = icmp ne %struct.dquot* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  br label %125

69:                                               ; preds = %56
  %70 = load %struct.dquot**, %struct.dquot*** %10, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.dquot*, %struct.dquot** %70, i64 %72
  %74 = load %struct.dquot*, %struct.dquot** %73, align 8
  %75 = getelementptr inbounds %struct.dquot, %struct.dquot* %74, i32 0, i32 0
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load %struct.dquot**, %struct.dquot*** %10, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.dquot*, %struct.dquot** %77, i64 %79
  %81 = load %struct.dquot*, %struct.dquot** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @info_bdq_free(%struct.dquot* %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %69
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %18, i64 %89
  %91 = load %struct.dquot**, %struct.dquot*** %10, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.dquot*, %struct.dquot** %91, i64 %93
  %95 = load %struct.dquot*, %struct.dquot** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @prepare_warning(%struct.dquot_warn* %90, %struct.dquot* %95, i32 %96)
  br label %98

98:                                               ; preds = %87, %69
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load %struct.dquot**, %struct.dquot*** %10, align 8
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.dquot*, %struct.dquot** %102, i64 %104
  %106 = load %struct.dquot*, %struct.dquot** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @dquot_free_reserved_space(%struct.dquot* %106, i32 %107)
  br label %117

109:                                              ; preds = %98
  %110 = load %struct.dquot**, %struct.dquot*** %10, align 8
  %111 = load i32, i32* %7, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.dquot*, %struct.dquot** %110, i64 %112
  %114 = load %struct.dquot*, %struct.dquot** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @dquot_decr_space(%struct.dquot* %114, i32 %115)
  br label %117

117:                                              ; preds = %109, %101
  %118 = load %struct.dquot**, %struct.dquot*** %10, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.dquot*, %struct.dquot** %118, i64 %120
  %122 = load %struct.dquot*, %struct.dquot** %121, align 8
  %123 = getelementptr inbounds %struct.dquot, %struct.dquot* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  br label %125

125:                                              ; preds = %117, %68
  %126 = load i32, i32* %7, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %52

128:                                              ; preds = %52
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = call i32* @inode_reserved_space(%struct.inode* %133)
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %141

137:                                              ; preds = %128
  %138 = load %struct.inode*, %struct.inode** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @__inode_sub_bytes(%struct.inode* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %131
  %142 = load %struct.inode*, %struct.inode** %4, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 0
  %144 = call i32 @spin_unlock(i32* %143)
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %151

148:                                              ; preds = %141
  %149 = load %struct.dquot**, %struct.dquot*** %10, align 8
  %150 = call i32 @mark_all_dquot_dirty(%struct.dquot** %149)
  br label %151

151:                                              ; preds = %148, %147
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @srcu_read_unlock(i32* @dquot_srcu, i32 %152)
  %154 = call i32 @flush_warnings(%struct.dquot_warn* %18)
  store i32 0, i32* %13, align 4
  br label %155

155:                                              ; preds = %151, %44
  %156 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %13, align 4
  switch i32 %157, label %159 [
    i32 0, label %158
    i32 1, label %158
  ]

158:                                              ; preds = %155, %155
  ret void

159:                                              ; preds = %155
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dquot_active(%struct.inode*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32* @inode_reserved_space(%struct.inode*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @inode_sub_bytes(%struct.inode*, i32) #2

declare dso_local %struct.dquot** @i_dquot(%struct.inode*) #2

declare dso_local i32 @srcu_read_lock(i32*) #2

declare dso_local i32 @info_bdq_free(%struct.dquot*, i32) #2

declare dso_local i32 @prepare_warning(%struct.dquot_warn*, %struct.dquot*, i32) #2

declare dso_local i32 @dquot_free_reserved_space(%struct.dquot*, i32) #2

declare dso_local i32 @dquot_decr_space(%struct.dquot*, i32) #2

declare dso_local i32 @__inode_sub_bytes(%struct.inode*, i32) #2

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
