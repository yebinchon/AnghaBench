; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_reserve_local_alloc_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_reserve_local_alloc_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ocfs2_alloc_context = type { i64, %struct.TYPE_6__*, i32, i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@LOCAL_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_AC_USE_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_reserve_local_alloc_bits(%struct.ocfs2_super* %0, i32 %1, %struct.ocfs2_alloc_context* %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_alloc_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %6, align 8
  %11 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %12 = icmp ne %struct.ocfs2_alloc_context* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %17 = load i32, i32* @LOCAL_ALLOC_SYSTEM_INODE, align 4
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %19 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %16, i32 %17, i32 %20)
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %140

29:                                               ; preds = %3
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = call i32 @inode_lock(%struct.inode* %30)
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %33 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %32, i32 0, i32 4
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %36 = call i32 @ocfs2_la_state_enabled(%struct.ocfs2_super* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %41 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ugt i32 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38, %29
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %46 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %45, i32 0, i32 4
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* @ENOSPC, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %140

50:                                               ; preds = %38
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %52 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %51, i32 0, i32 4
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %55 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %59, %struct.ocfs2_dinode** %8, align 8
  %60 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %61 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le32_to_cpu(i32 %64)
  %66 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %67 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @le32_to_cpu(i32 %70)
  %72 = sub nsw i64 %65, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %119

77:                                               ; preds = %50
  %78 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = call i32 @ocfs2_local_alloc_slide_window(%struct.ocfs2_super* %78, %struct.inode* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @ENOSPC, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  br label %91

91:                                               ; preds = %88, %83
  br label %140

92:                                               ; preds = %77
  %93 = load i32, i32* @ENOSPC, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  %95 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %96 = call i32 @ocfs2_la_state_enabled(%struct.ocfs2_super* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %140

99:                                               ; preds = %92
  %100 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %101 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @le32_to_cpu(i32 %104)
  %106 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %107 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @le32_to_cpu(i32 %110)
  %112 = sub nsw i64 %105, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ugt i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %99
  br label %140

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %118, %50
  %120 = load %struct.inode*, %struct.inode** %9, align 8
  %121 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %122 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %121, i32 0, i32 4
  store %struct.inode* %120, %struct.inode** %122, align 8
  %123 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %124 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %127 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @OCFS2_AC_USE_LOCAL, align 4
  %129 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %130 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %132 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %131, i32 0, i32 2
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = call i32 @get_bh(%struct.TYPE_6__* %133)
  %135 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %136 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %135, i32 0, i32 2
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %139 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %138, i32 0, i32 1
  store %struct.TYPE_6__* %137, %struct.TYPE_6__** %139, align 8
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %119, %117, %98, %91, %44, %24
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load %struct.inode*, %struct.inode** %9, align 8
  %145 = icmp ne %struct.inode* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load %struct.inode*, %struct.inode** %9, align 8
  %148 = call i32 @inode_unlock(%struct.inode* %147)
  %149 = load %struct.inode*, %struct.inode** %9, align 8
  %150 = call i32 @iput(%struct.inode* %149)
  br label %151

151:                                              ; preds = %146, %143, %140
  %152 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %153 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %157 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @trace_ocfs2_reserve_local_alloc_bits(i64 %154, i32 %155, i32 %158, i32 %159)
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %151
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @mlog_errno(i32 %164)
  br label %166

166:                                              ; preds = %163, %151
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocfs2_la_state_enabled(%struct.ocfs2_super*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_local_alloc_slide_window(%struct.ocfs2_super*, %struct.inode*) #1

declare dso_local i32 @get_bh(%struct.TYPE_6__*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_reserve_local_alloc_bits(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
