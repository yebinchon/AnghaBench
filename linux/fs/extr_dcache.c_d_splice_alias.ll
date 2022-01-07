; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_splice_alias.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_splice_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dentry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@rename_lock = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"VFS: Lookup of '%s' in %s %s would have caused loop\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @d_splice_alias(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i64 @IS_ERR(%struct.inode* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.dentry* @ERR_CAST(%struct.inode* %13)
  store %struct.dentry* %14, %struct.dentry** %3, align 8
  br label %117

15:                                               ; preds = %2
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call i32 @d_unhashed(%struct.dentry* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %113

25:                                               ; preds = %15
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i32 @security_d_instantiate(%struct.dentry* %26, %struct.inode* %27)
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISDIR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %112

37:                                               ; preds = %25
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call %struct.dentry* @__d_find_any_alias(%struct.inode* %38)
  store %struct.dentry* %39, %struct.dentry** %6, align 8
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = call i64 @unlikely(%struct.dentry* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %111

43:                                               ; preds = %37
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = call i32 @write_seqlock(i32* @rename_lock)
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = call %struct.dentry* @d_ancestor(%struct.dentry* %48, %struct.dentry* %49)
  %51 = call i64 @unlikely(%struct.dentry* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %43
  %54 = call i32 @write_sequnlock(i32* @rename_lock)
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = call i32 @dput(%struct.dentry* %55)
  %57 = load i32, i32* @ELOOP, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.dentry* @ERR_PTR(i32 %58)
  store %struct.dentry* %59, %struct.dentry** %6, align 8
  %60 = load %struct.dentry*, %struct.dentry** %5, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %70, i32 %75)
  br label %107

77:                                               ; preds = %43
  %78 = load %struct.dentry*, %struct.dentry** %6, align 8
  %79 = call i32 @IS_ROOT(%struct.dentry* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %77
  %82 = load %struct.dentry*, %struct.dentry** %6, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.dentry* @dget(i32 %84)
  store %struct.dentry* %85, %struct.dentry** %7, align 8
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = load %struct.dentry*, %struct.dentry** %5, align 8
  %88 = load %struct.dentry*, %struct.dentry** %6, align 8
  %89 = call i32 @__d_unalias(%struct.inode* %86, %struct.dentry* %87, %struct.dentry* %88)
  store i32 %89, i32* %8, align 4
  %90 = call i32 @write_sequnlock(i32* @rename_lock)
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %81
  %94 = load %struct.dentry*, %struct.dentry** %6, align 8
  %95 = call i32 @dput(%struct.dentry* %94)
  %96 = load i32, i32* %8, align 4
  %97 = call %struct.dentry* @ERR_PTR(i32 %96)
  store %struct.dentry* %97, %struct.dentry** %6, align 8
  br label %98

98:                                               ; preds = %93, %81
  %99 = load %struct.dentry*, %struct.dentry** %7, align 8
  %100 = call i32 @dput(%struct.dentry* %99)
  br label %106

101:                                              ; preds = %77
  %102 = load %struct.dentry*, %struct.dentry** %6, align 8
  %103 = load %struct.dentry*, %struct.dentry** %5, align 8
  %104 = call i32 @__d_move(%struct.dentry* %102, %struct.dentry* %103, i32 0)
  %105 = call i32 @write_sequnlock(i32* @rename_lock)
  br label %106

106:                                              ; preds = %101, %98
  br label %107

107:                                              ; preds = %106, %53
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = call i32 @iput(%struct.inode* %108)
  %110 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %110, %struct.dentry** %3, align 8
  br label %117

111:                                              ; preds = %37
  br label %112

112:                                              ; preds = %111, %25
  br label %113

113:                                              ; preds = %112, %24
  %114 = load %struct.dentry*, %struct.dentry** %5, align 8
  %115 = load %struct.inode*, %struct.inode** %4, align 8
  %116 = call i32 @__d_add(%struct.dentry* %114, %struct.inode* %115)
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %117

117:                                              ; preds = %113, %107, %12
  %118 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %118
}

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @security_d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.dentry* @__d_find_any_alias(%struct.inode*) #1

declare dso_local i64 @unlikely(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local %struct.dentry* @d_ancestor(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32, i32) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @__d_unalias(%struct.inode*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @__d_move(%struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @__d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
