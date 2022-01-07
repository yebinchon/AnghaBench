; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dcache.c_ocfs2_dentry_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dcache.c_ocfs2_dentry_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, %struct.TYPE_3__, i32, %struct.dentry*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.inode = type { i64, i32 }
%struct.ocfs2_super = type { %struct.inode* }
%struct.TYPE_4__ = type { i64, i32, i64, i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @ocfs2_dentry_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dentry_revalidate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LOOKUP_RCU, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ECHILD, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %144

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = call %struct.inode* @d_inode(%struct.dentry* %19)
  store %struct.inode* %20, %struct.inode** %6, align 8
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.ocfs2_super* @OCFS2_SB(i32 %23)
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %8, align 8
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dentry*, %struct.dentry** %4, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @trace_ocfs2_dentry_revalidate(%struct.dentry* %25, i32 %29, i32 %33)
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = icmp eq %struct.inode* %35, null
  br i1 %36, label %37, label %70

37:                                               ; preds = %18
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  %41 = load %struct.dentry*, %struct.dentry** %4, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 2
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 3
  %46 = load %struct.dentry*, %struct.dentry** %45, align 8
  %47 = call %struct.inode* @d_inode(%struct.dentry* %46)
  %48 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  %51 = load %struct.dentry*, %struct.dentry** %4, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 2
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.dentry*, %struct.dentry** %4, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dentry*, %struct.dentry** %4, align 8
  %59 = getelementptr inbounds %struct.dentry, %struct.dentry* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @trace_ocfs2_dentry_revalidate_negative(i32 %57, i32 %61, i64 %62, i64 %63)
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %37
  br label %140

69:                                               ; preds = %37
  br label %139

70:                                               ; preds = %18
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %72 = icmp ne %struct.ocfs2_super* %71, null
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %78 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %77, i32 0, i32 0
  %79 = load %struct.inode*, %struct.inode** %78, align 8
  %80 = icmp eq %struct.inode* %76, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %70
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = call i64 @is_bad_inode(%struct.inode* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %70
  br label %140

86:                                               ; preds = %81
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %86
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load %struct.inode*, %struct.inode** %6, align 8
  %104 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %103)
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @trace_ocfs2_dentry_revalidate_delete(i64 %106)
  br label %140

108:                                              ; preds = %86
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %109)
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load %struct.inode*, %struct.inode** %6, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %108
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.inode*, %struct.inode** %6, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @S_ISDIR(i32 %124)
  %126 = call i32 @trace_ocfs2_dentry_revalidate_orphaned(i64 %121, i32 %125)
  br label %140

127:                                              ; preds = %108
  %128 = load %struct.dentry*, %struct.dentry** %4, align 8
  %129 = getelementptr inbounds %struct.dentry, %struct.dentry* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load %struct.inode*, %struct.inode** %6, align 8
  %134 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %133)
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @trace_ocfs2_dentry_revalidate_nofsdata(i64 %136)
  br label %140

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138, %69
  store i32 1, i32* %7, align 4
  br label %140

140:                                              ; preds = %139, %132, %117, %98, %85, %68
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @trace_ocfs2_dentry_revalidate_ret(i32 %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %15
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @trace_ocfs2_dentry_revalidate(%struct.dentry*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_ocfs2_dentry_revalidate_negative(i32, i32, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_dentry_revalidate_delete(i64) #1

declare dso_local i32 @trace_ocfs2_dentry_revalidate_orphaned(i64, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @trace_ocfs2_dentry_revalidate_nofsdata(i64) #1

declare dso_local i32 @trace_ocfs2_dentry_revalidate_ret(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
