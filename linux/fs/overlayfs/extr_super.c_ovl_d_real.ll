; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_d_real.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_d_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [49 x i8] c"ovl_d_real(%pd4, %s:%lu): real dentry not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.inode*)* @ovl_d_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_d_real(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %5, align 8
  %8 = icmp ne %struct.inode* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = call %struct.inode* @d_inode(%struct.dentry* %10)
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = icmp eq %struct.inode* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %15, %struct.dentry** %3, align 8
  br label %100

16:                                               ; preds = %9, %2
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = call i32 @d_is_reg(%struct.dentry* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = call %struct.inode* @d_inode(%struct.dentry* %25)
  %27 = icmp eq %struct.inode* %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %20
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %29, %struct.dentry** %3, align 8
  br label %100

30:                                               ; preds = %23
  br label %76

31:                                               ; preds = %16
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = call %struct.dentry* @ovl_dentry_upper(%struct.dentry* %32)
  store %struct.dentry* %33, %struct.dentry** %6, align 8
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = icmp ne %struct.dentry* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = call %struct.inode* @d_inode(%struct.dentry* %38)
  %40 = icmp eq %struct.inode* %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %42, %struct.dentry** %3, align 8
  br label %100

43:                                               ; preds = %36, %31
  %44 = load %struct.dentry*, %struct.dentry** %6, align 8
  %45 = icmp ne %struct.dentry* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = icmp ne %struct.inode* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load %struct.dentry*, %struct.dentry** %4, align 8
  %51 = call %struct.inode* @d_inode(%struct.dentry* %50)
  %52 = call i64 @ovl_has_upperdata(%struct.inode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %55, %struct.dentry** %3, align 8
  br label %100

56:                                               ; preds = %49, %46, %43
  %57 = load %struct.dentry*, %struct.dentry** %4, align 8
  %58 = call %struct.dentry* @ovl_dentry_lowerdata(%struct.dentry* %57)
  store %struct.dentry* %58, %struct.dentry** %6, align 8
  %59 = load %struct.dentry*, %struct.dentry** %6, align 8
  %60 = icmp ne %struct.dentry* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %76

62:                                               ; preds = %56
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = call %struct.dentry* @d_real(%struct.dentry* %63, %struct.inode* %64)
  store %struct.dentry* %65, %struct.dentry** %6, align 8
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = icmp ne %struct.inode* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = call %struct.inode* @d_inode(%struct.dentry* %70)
  %72 = icmp eq %struct.inode* %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68, %62
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %74, %struct.dentry** %3, align 8
  br label %100

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %61, %30
  %77 = load %struct.dentry*, %struct.dentry** %4, align 8
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = icmp ne %struct.inode* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  br label %87

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %80
  %88 = phi i8* [ %85, %80 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %86 ]
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = icmp ne %struct.inode* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i32 [ %94, %91 ], [ 0, %95 ]
  %98 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.dentry* %77, i8* %88, i32 %97)
  %99 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %99, %struct.dentry** %3, align 8
  br label %100

100:                                              ; preds = %96, %73, %54, %41, %28, %14
  %101 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %101
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @d_is_reg(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local i64 @ovl_has_upperdata(%struct.inode*) #1

declare dso_local %struct.dentry* @ovl_dentry_lowerdata(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_real(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @WARN(i32, i8*, %struct.dentry*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
