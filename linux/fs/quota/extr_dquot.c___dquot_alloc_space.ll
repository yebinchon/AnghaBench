; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c___dquot_alloc_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c___dquot_alloc_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dquot = type { i32 }
%struct.dquot_warn = type { i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@DQUOT_SPACE_RESERVE = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i32 0, align 4
@dquot_srcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dquot_alloc_space(%struct.inode* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dquot**, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @MAXQUOTAS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca %struct.dquot_warn, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DQUOT_SPACE_RESERVE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @dquot_active(%struct.inode* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call i32* @inode_reserved_space(%struct.inode* %32)
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  br label %45

41:                                               ; preds = %24
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @inode_add_bytes(%struct.inode* %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %27
  br label %197

46:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %57, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @MAXQUOTAS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* @QUOTA_NL_NOWARN, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %17, i64 %54
  %56 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %47

60:                                               ; preds = %47
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = call %struct.dquot** @i_dquot(%struct.inode* %61)
  store %struct.dquot** %62, %struct.dquot*** %13, align 8
  %63 = call i32 @srcu_read_lock(i32* @dquot_srcu)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = call i32 @spin_lock(i32* %65)
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %165, %60
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MAXQUOTAS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %168

71:                                               ; preds = %67
  %72 = load %struct.dquot**, %struct.dquot*** %13, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.dquot*, %struct.dquot** %72, i64 %74
  %76 = load %struct.dquot*, %struct.dquot** %75, align 8
  %77 = icmp ne %struct.dquot* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  br label %165

79:                                               ; preds = %71
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load %struct.dquot**, %struct.dquot*** %13, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.dquot*, %struct.dquot** %83, i64 %85
  %87 = load %struct.dquot*, %struct.dquot** %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %17, i64 %91
  %93 = call i32 @dquot_add_space(%struct.dquot* %87, i64 0, i64 %88, i32 %89, %struct.dquot_warn* %92)
  store i32 %93, i32* %8, align 4
  br label %106

94:                                               ; preds = %79
  %95 = load %struct.dquot**, %struct.dquot*** %13, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.dquot*, %struct.dquot** %95, i64 %97
  %99 = load %struct.dquot*, %struct.dquot** %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.dquot_warn, %struct.dquot_warn* %17, i64 %103
  %105 = call i32 @dquot_add_space(%struct.dquot* %99, i64 %100, i64 0, i32 %101, %struct.dquot_warn* %104)
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %94, %82
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %164

109:                                              ; preds = %106
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %157, %109
  %113 = load i32, i32* %7, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %160

115:                                              ; preds = %112
  %116 = load %struct.dquot**, %struct.dquot*** %13, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.dquot*, %struct.dquot** %116, i64 %118
  %120 = load %struct.dquot*, %struct.dquot** %119, align 8
  %121 = icmp ne %struct.dquot* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  br label %157

123:                                              ; preds = %115
  %124 = load %struct.dquot**, %struct.dquot*** %13, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.dquot*, %struct.dquot** %124, i64 %126
  %128 = load %struct.dquot*, %struct.dquot** %127, align 8
  %129 = getelementptr inbounds %struct.dquot, %struct.dquot* %128, i32 0, i32 0
  %130 = call i32 @spin_lock(i32* %129)
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %123
  %134 = load %struct.dquot**, %struct.dquot*** %13, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.dquot*, %struct.dquot** %134, i64 %136
  %138 = load %struct.dquot*, %struct.dquot** %137, align 8
  %139 = load i64, i64* %5, align 8
  %140 = call i32 @dquot_free_reserved_space(%struct.dquot* %138, i64 %139)
  br label %149

141:                                              ; preds = %123
  %142 = load %struct.dquot**, %struct.dquot*** %13, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.dquot*, %struct.dquot** %142, i64 %144
  %146 = load %struct.dquot*, %struct.dquot** %145, align 8
  %147 = load i64, i64* %5, align 8
  %148 = call i32 @dquot_decr_space(%struct.dquot* %146, i64 %147)
  br label %149

149:                                              ; preds = %141, %133
  %150 = load %struct.dquot**, %struct.dquot*** %13, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.dquot*, %struct.dquot** %150, i64 %152
  %154 = load %struct.dquot*, %struct.dquot** %153, align 8
  %155 = getelementptr inbounds %struct.dquot, %struct.dquot* %154, i32 0, i32 0
  %156 = call i32 @spin_unlock(i32* %155)
  br label %157

157:                                              ; preds = %149, %122
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %7, align 4
  br label %112

160:                                              ; preds = %112
  %161 = load %struct.inode*, %struct.inode** %4, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 0
  %163 = call i32 @spin_unlock(i32* %162)
  br label %193

164:                                              ; preds = %106
  br label %165

165:                                              ; preds = %164, %78
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %67

168:                                              ; preds = %67
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %168
  %172 = load i64, i64* %5, align 8
  %173 = load %struct.inode*, %struct.inode** %4, align 8
  %174 = call i32* @inode_reserved_space(%struct.inode* %173)
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %172
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %174, align 4
  br label %183

179:                                              ; preds = %168
  %180 = load %struct.inode*, %struct.inode** %4, align 8
  %181 = load i64, i64* %5, align 8
  %182 = call i32 @__inode_add_bytes(%struct.inode* %180, i64 %181)
  br label %183

183:                                              ; preds = %179, %171
  %184 = load %struct.inode*, %struct.inode** %4, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 0
  %186 = call i32 @spin_unlock(i32* %185)
  %187 = load i32, i32* %12, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %193

190:                                              ; preds = %183
  %191 = load %struct.dquot**, %struct.dquot*** %13, align 8
  %192 = call i32 @mark_all_dquot_dirty(%struct.dquot** %191)
  br label %193

193:                                              ; preds = %190, %189, %160
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @srcu_read_unlock(i32* @dquot_srcu, i32 %194)
  %196 = call i32 @flush_warnings(%struct.dquot_warn* %17)
  br label %197

197:                                              ; preds = %193, %45
  %198 = load i32, i32* %8, align 4
  %199 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %199)
  ret i32 %198
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dquot_active(%struct.inode*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32* @inode_reserved_space(%struct.inode*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @inode_add_bytes(%struct.inode*, i64) #2

declare dso_local %struct.dquot** @i_dquot(%struct.inode*) #2

declare dso_local i32 @srcu_read_lock(i32*) #2

declare dso_local i32 @dquot_add_space(%struct.dquot*, i64, i64, i32, %struct.dquot_warn*) #2

declare dso_local i32 @dquot_free_reserved_space(%struct.dquot*, i64) #2

declare dso_local i32 @dquot_decr_space(%struct.dquot*, i64) #2

declare dso_local i32 @__inode_add_bytes(%struct.inode*, i64) #2

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
