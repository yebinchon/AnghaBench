; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_fs_context_dup.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_fs_context_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.smack_mnt_opts* }
%struct.smack_mnt_opts = type { i8*, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_context*)* @smack_fs_context_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_fs_context_dup(%struct.fs_context* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.smack_mnt_opts*, align 8
  %7 = alloca %struct.smack_mnt_opts*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %8 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %9 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %8, i32 0, i32 0
  %10 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %9, align 8
  store %struct.smack_mnt_opts* %10, %struct.smack_mnt_opts** %7, align 8
  %11 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %7, align 8
  %12 = icmp ne %struct.smack_mnt_opts* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %135

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.smack_mnt_opts* @kzalloc(i32 40, i32 %15)
  %17 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %18 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %17, i32 0, i32 0
  store %struct.smack_mnt_opts* %16, %struct.smack_mnt_opts** %18, align 8
  %19 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %20 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %19, i32 0, i32 0
  %21 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %20, align 8
  %22 = icmp ne %struct.smack_mnt_opts* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %135

26:                                               ; preds = %14
  %27 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %28 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %27, i32 0, i32 0
  %29 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %28, align 8
  store %struct.smack_mnt_opts* %29, %struct.smack_mnt_opts** %6, align 8
  %30 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %7, align 8
  %31 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %7, align 8
  %36 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kstrdup(i8* %37, i32 %38)
  %40 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %6, align 8
  %41 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %6, align 8
  %43 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %42, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %135

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %7, align 8
  %52 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %7, align 8
  %57 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kstrdup(i8* %58, i32 %59)
  %61 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %6, align 8
  %62 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %6, align 8
  %64 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %135

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %50
  %72 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %7, align 8
  %73 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %7, align 8
  %78 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @kstrdup(i8* %79, i32 %80)
  %82 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %6, align 8
  %83 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %6, align 8
  %85 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %76
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %135

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %71
  %93 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %7, align 8
  %94 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %7, align 8
  %99 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i8* @kstrdup(i8* %100, i32 %101)
  %103 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %6, align 8
  %104 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %6, align 8
  %106 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %135

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %92
  %114 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %7, align 8
  %115 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %134

118:                                              ; preds = %113
  %119 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %7, align 8
  %120 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @kstrdup(i8* %121, i32 %122)
  %124 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %6, align 8
  %125 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %6, align 8
  %127 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %118
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %135

133:                                              ; preds = %118
  br label %134

134:                                              ; preds = %133, %113
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %130, %109, %88, %67, %46, %23, %13
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.smack_mnt_opts* @kzalloc(i32, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
