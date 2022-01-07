; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_lookup_real.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_lookup_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.ovl_layer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dentry* }

@EXDEV = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"overlayfs: failed to lookup by real (%pd2, layer=%d, connected=%pd2, err=%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.dentry*, %struct.ovl_layer*)* @ovl_lookup_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_lookup_real(%struct.super_block* %0, %struct.dentry* %1, %struct.ovl_layer* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.ovl_layer*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.ovl_layer* %2, %struct.ovl_layer** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = load %struct.ovl_layer*, %struct.ovl_layer** %7, align 8
  %17 = call %struct.dentry* @ovl_lookup_real_ancestor(%struct.super_block* %14, %struct.dentry* %15, %struct.ovl_layer* %16)
  store %struct.dentry* %17, %struct.dentry** %8, align 8
  %18 = load %struct.dentry*, %struct.dentry** %8, align 8
  %19 = call i64 @IS_ERR(%struct.dentry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %22, %struct.dentry** %4, align 8
  br label %131

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %108, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %113

28:                                               ; preds = %24
  store %struct.dentry* null, %struct.dentry** %12, align 8
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = load %struct.ovl_layer*, %struct.ovl_layer** %7, align 8
  %31 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.dentry* @ovl_dentry_real_at(%struct.dentry* %29, i32 %32)
  store %struct.dentry* %33, %struct.dentry** %13, align 8
  %34 = load %struct.dentry*, %struct.dentry** %13, align 8
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = icmp eq %struct.dentry* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %113

38:                                               ; preds = %28
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = call %struct.dentry* @dget(%struct.dentry* %39)
  store %struct.dentry* %40, %struct.dentry** %10, align 8
  br label %41

41:                                               ; preds = %70, %38
  %42 = load %struct.dentry*, %struct.dentry** %10, align 8
  %43 = call %struct.dentry* @dget_parent(%struct.dentry* %42)
  store %struct.dentry* %43, %struct.dentry** %12, align 8
  %44 = load %struct.dentry*, %struct.dentry** %12, align 8
  %45 = load %struct.dentry*, %struct.dentry** %13, align 8
  %46 = icmp eq %struct.dentry* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %74

48:                                               ; preds = %41
  %49 = load %struct.dentry*, %struct.dentry** %12, align 8
  %50 = load %struct.ovl_layer*, %struct.ovl_layer** %7, align 8
  %51 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.dentry*, %struct.dentry** %53, align 8
  %55 = icmp eq %struct.dentry* %49, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.dentry*, %struct.dentry** %8, align 8
  %58 = call i32 @dput(%struct.dentry* %57)
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 0
  %61 = load %struct.dentry*, %struct.dentry** %60, align 8
  %62 = call %struct.dentry* @dget(%struct.dentry* %61)
  store %struct.dentry* %62, %struct.dentry** %8, align 8
  br label %74

63:                                               ; preds = %48
  %64 = load %struct.dentry*, %struct.dentry** %12, align 8
  %65 = load %struct.dentry*, %struct.dentry** %10, align 8
  %66 = icmp eq %struct.dentry* %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EXDEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %74

70:                                               ; preds = %63
  %71 = load %struct.dentry*, %struct.dentry** %10, align 8
  %72 = call i32 @dput(%struct.dentry* %71)
  %73 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %73, %struct.dentry** %10, align 8
  br label %41

74:                                               ; preds = %67, %56, %47
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %108, label %77

77:                                               ; preds = %74
  %78 = load %struct.dentry*, %struct.dentry** %8, align 8
  %79 = load %struct.dentry*, %struct.dentry** %10, align 8
  %80 = load %struct.ovl_layer*, %struct.ovl_layer** %7, align 8
  %81 = call %struct.dentry* @ovl_lookup_real_one(%struct.dentry* %78, %struct.dentry* %79, %struct.ovl_layer* %80)
  store %struct.dentry* %81, %struct.dentry** %11, align 8
  %82 = load %struct.dentry*, %struct.dentry** %11, align 8
  %83 = call i64 @IS_ERR(%struct.dentry* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.dentry*, %struct.dentry** %11, align 8
  %87 = call i32 @PTR_ERR(%struct.dentry* %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %85, %77
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @ECHILD, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.super_block*, %struct.super_block** %5, align 8
  %95 = load %struct.dentry*, %struct.dentry** %6, align 8
  %96 = load %struct.ovl_layer*, %struct.ovl_layer** %7, align 8
  %97 = call %struct.dentry* @ovl_lookup_real_ancestor(%struct.super_block* %94, %struct.dentry* %95, %struct.ovl_layer* %96)
  store %struct.dentry* %97, %struct.dentry** %11, align 8
  %98 = load %struct.dentry*, %struct.dentry** %11, align 8
  %99 = call i32 @PTR_ERR_OR_ZERO(%struct.dentry* %98)
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %93, %88
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load %struct.dentry*, %struct.dentry** %8, align 8
  %105 = call i32 @dput(%struct.dentry* %104)
  %106 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %106, %struct.dentry** %8, align 8
  br label %107

107:                                              ; preds = %103, %100
  br label %108

108:                                              ; preds = %107, %74
  %109 = load %struct.dentry*, %struct.dentry** %12, align 8
  %110 = call i32 @dput(%struct.dentry* %109)
  %111 = load %struct.dentry*, %struct.dentry** %10, align 8
  %112 = call i32 @dput(%struct.dentry* %111)
  br label %24

113:                                              ; preds = %37, %24
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %119

117:                                              ; preds = %113
  %118 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %118, %struct.dentry** %4, align 8
  br label %131

119:                                              ; preds = %116
  %120 = load %struct.dentry*, %struct.dentry** %6, align 8
  %121 = load %struct.ovl_layer*, %struct.ovl_layer** %7, align 8
  %122 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.dentry*, %struct.dentry** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), %struct.dentry* %120, i32 %123, %struct.dentry* %124, i32 %125)
  %127 = load %struct.dentry*, %struct.dentry** %8, align 8
  %128 = call i32 @dput(%struct.dentry* %127)
  %129 = load i32, i32* %9, align 4
  %130 = call %struct.dentry* @ERR_PTR(i32 %129)
  store %struct.dentry* %130, %struct.dentry** %4, align 8
  br label %131

131:                                              ; preds = %119, %117, %21
  %132 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %132
}

declare dso_local %struct.dentry* @ovl_lookup_real_ancestor(%struct.super_block*, %struct.dentry*, %struct.ovl_layer*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_dentry_real_at(%struct.dentry*, i32) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_lookup_real_one(%struct.dentry*, %struct.dentry*, %struct.ovl_layer*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.dentry*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, %struct.dentry*, i32, %struct.dentry*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
