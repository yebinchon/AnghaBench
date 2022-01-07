; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_get_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_get_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@ovl_redirect_max = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, i32)* @ovl_get_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ovl_get_redirect(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @ovl_redirect_max, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kstrndup(i8* %20, i32 %24, i32 %25)
  store i8* %26, i8** %6, align 8
  br label %134

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kmalloc(i32 %28, i32 %29)
  store i8* %30, i8** %6, align 8
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %134

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load %struct.dentry*, %struct.dentry** %3, align 8
  %42 = call %struct.dentry* @dget(%struct.dentry* %41)
  store %struct.dentry* %42, %struct.dentry** %7, align 8
  br label %43

43:                                               ; preds = %115, %34
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = call i32 @IS_ROOT(%struct.dentry* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %122

48:                                               ; preds = %43
  %49 = load %struct.dentry*, %struct.dentry** %7, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = call i8* @ovl_dentry_get_redirect(%struct.dentry* %52)
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @strlen(i8* %57)
  store i32 %58, i32* %11, align 4
  br label %68

59:                                               ; preds = %48
  %60 = load %struct.dentry*, %struct.dentry** %7, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %10, align 8
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %59, %56
  %69 = load i32, i32* %11, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 47
  %75 = zext i1 %74 to i32
  %76 = add nsw i32 %69, %75
  %77 = load i32, i32* %9, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %68
  %80 = load i32, i32* @EXDEV, align 4
  %81 = sub nsw i32 0, %80
  %82 = call i8* @ERR_PTR(i32 %81)
  store i8* %82, i8** %6, align 8
  %83 = load %struct.dentry*, %struct.dentry** %7, align 8
  %84 = getelementptr inbounds %struct.dentry, %struct.dentry* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  br label %129

86:                                               ; preds = %68
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @memcpy(i8* %93, i8* %94, i32 %95)
  %97 = load %struct.dentry*, %struct.dentry** %7, align 8
  %98 = getelementptr inbounds %struct.dentry, %struct.dentry* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.dentry* @dget_dlock(i32 %99)
  store %struct.dentry* %100, %struct.dentry** %8, align 8
  %101 = load %struct.dentry*, %struct.dentry** %7, align 8
  %102 = getelementptr inbounds %struct.dentry, %struct.dentry* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load %struct.dentry*, %struct.dentry** %7, align 8
  %105 = call i32 @dput(%struct.dentry* %104)
  %106 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %106, %struct.dentry** %7, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 47
  br i1 %113, label %114, label %115

114:                                              ; preds = %86
  br label %122

115:                                              ; preds = %86
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %9, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8 47, i8* %121, align 1
  br label %43

122:                                              ; preds = %114, %43
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i8* @kstrdup(i8* %126, i32 %127)
  store i8* %128, i8** %6, align 8
  br label %129

129:                                              ; preds = %122, %79
  %130 = load %struct.dentry*, %struct.dentry** %7, align 8
  %131 = call i32 @dput(%struct.dentry* %130)
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 @kfree(i8* %132)
  br label %134

134:                                              ; preds = %129, %33, %16
  %135 = load i8*, i8** %6, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i8*, i8** %6, align 8
  br label %143

139:                                              ; preds = %134
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  %142 = call i8* @ERR_PTR(i32 %141)
  br label %143

143:                                              ; preds = %139, %137
  %144 = phi i8* [ %138, %137 ], [ %142, %139 ]
  ret i8* %144
}

declare dso_local i8* @kstrndup(i8*, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @ovl_dentry_get_redirect(%struct.dentry*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.dentry* @dget_dlock(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
