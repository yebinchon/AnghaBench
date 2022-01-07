; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_connect_layer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_connect_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.dentry* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@OVL_E_CONNECTED = common dso_local global i32 0, align 4
@OVL_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @ovl_connect_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_connect_layer(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.dentry* null, %struct.dentry** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  %14 = icmp eq %struct.dentry* %8, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = call i32 @ovl_dentry_lower(%struct.dentry* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18, %1
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %103

29:                                               ; preds = %18
  %30 = load %struct.dentry*, %struct.dentry** %3, align 8
  %31 = call %struct.TYPE_8__* @OVL_E(%struct.dentry* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @OVL_E_CONNECTED, align 4
  %40 = load %struct.dentry*, %struct.dentry** %3, align 8
  %41 = call i64 @ovl_dentry_test_flag(i32 %39, %struct.dentry* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %103

45:                                               ; preds = %29
  %46 = load %struct.dentry*, %struct.dentry** %3, align 8
  %47 = call %struct.dentry* @dget(%struct.dentry* %46)
  store %struct.dentry* %47, %struct.dentry** %4, align 8
  br label %48

48:                                               ; preds = %80, %45
  %49 = load %struct.dentry*, %struct.dentry** %4, align 8
  %50 = call %struct.dentry* @dget_parent(%struct.dentry* %49)
  store %struct.dentry* %50, %struct.dentry** %5, align 8
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  %52 = load %struct.dentry*, %struct.dentry** %4, align 8
  %53 = icmp eq %struct.dentry* %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %84

60:                                               ; preds = %48
  %61 = load %struct.dentry*, %struct.dentry** %5, align 8
  %62 = call i32 @ovl_connectable_layer(%struct.dentry* %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.dentry*, %struct.dentry** %4, align 8
  %67 = call i32 @ovl_encode_maybe_copy_up(%struct.dentry* %66)
  store i32 %67, i32* %7, align 4
  br label %84

68:                                               ; preds = %60
  %69 = load i32, i32* @OVL_E_CONNECTED, align 4
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = call i64 @ovl_dentry_test_flag(i32 %69, %struct.dentry* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @OVL_INDEX, align 4
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  %76 = call i32 @d_inode(%struct.dentry* %75)
  %77 = call i64 @ovl_test_flag(i32 %74, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %68
  br label %84

80:                                               ; preds = %73
  %81 = load %struct.dentry*, %struct.dentry** %4, align 8
  %82 = call i32 @dput(%struct.dentry* %81)
  %83 = load %struct.dentry*, %struct.dentry** %5, align 8
  store %struct.dentry* %83, %struct.dentry** %4, align 8
  br label %48

84:                                               ; preds = %79, %65, %57
  %85 = load %struct.dentry*, %struct.dentry** %5, align 8
  %86 = call i32 @dput(%struct.dentry* %85)
  %87 = load %struct.dentry*, %struct.dentry** %4, align 8
  %88 = call i32 @dput(%struct.dentry* %87)
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* @OVL_E_CONNECTED, align 4
  %93 = load %struct.dentry*, %struct.dentry** %3, align 8
  %94 = call i32 @ovl_dentry_set_flag(i32 %92, %struct.dentry* %93)
  br label %95

95:                                               ; preds = %91, %84
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = phi i32 [ %96, %98 ], [ %100, %99 ]
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %43, %26
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ovl_dentry_lower(%struct.dentry*) #1

declare dso_local %struct.TYPE_8__* @OVL_E(%struct.dentry*) #1

declare dso_local i64 @ovl_dentry_test_flag(i32, %struct.dentry*) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @ovl_connectable_layer(%struct.dentry*) #1

declare dso_local i32 @ovl_encode_maybe_copy_up(%struct.dentry*) #1

declare dso_local i64 @ovl_test_flag(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @ovl_dentry_set_flag(i32, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
