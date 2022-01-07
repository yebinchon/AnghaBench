; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_aa_path_link.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_aa_path_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.path = type { %struct.dentry*, i32 }
%struct.dentry = type { i32 }
%struct.path_cond = type { i32, i32 }
%struct.aa_profile = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_path_link(%struct.aa_label* %0, %struct.dentry* %1, %struct.path* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.path, align 8
  %10 = alloca %struct.path, align 8
  %11 = alloca %struct.path_cond, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.aa_profile*, align 8
  %15 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.path* %2, %struct.path** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %16 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %17, %struct.dentry** %16, align 8
  %18 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 1
  %19 = load %struct.path*, %struct.path** %7, align 8
  %20 = getelementptr inbounds %struct.path, %struct.path* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 8
  %22 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %23, %struct.dentry** %22, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %25 = load %struct.path*, %struct.path** %7, align 8
  %26 = getelementptr inbounds %struct.path, %struct.path* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %24, align 8
  %28 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %11, i32 0, i32 0
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = call %struct.TYPE_2__* @d_backing_inode(%struct.dentry* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %28, align 4
  %33 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %11, i32 0, i32 1
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = call %struct.TYPE_2__* @d_backing_inode(%struct.dentry* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %33, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @get_buffers(i8* %38, i8* %39)
  %41 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %42 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %43 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @profile_path_link(%struct.aa_profile* %43, %struct.path* %9, i8* %44, %struct.path* %10, i8* %45, %struct.path_cond* %11)
  %47 = call i32 @fn_for_each_confined(%struct.aa_label* %41, %struct.aa_profile* %42, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @put_buffers(i8* %48, i8* %49)
  %51 = load i32, i32* %15, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_2__* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @get_buffers(i8*, i8*) #1

declare dso_local i32 @fn_for_each_confined(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @profile_path_link(%struct.aa_profile*, %struct.path*, i8*, %struct.path*, i8*, %struct.path_cond*) #1

declare dso_local i32 @put_buffers(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
