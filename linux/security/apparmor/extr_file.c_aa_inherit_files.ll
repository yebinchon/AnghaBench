; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_aa_inherit_files.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_aa_inherit_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.files_struct = type { i32 }
%struct.aa_label = type { i32 }
%struct.file = type { i32 }

@match_file = common dso_local global i32 0, align 4
@aa_null = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_inherit_files(%struct.cred* %0, %struct.files_struct* %1) #0 {
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.files_struct*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %3, align 8
  store %struct.files_struct* %1, %struct.files_struct** %4, align 8
  %8 = load %struct.cred*, %struct.cred** %3, align 8
  %9 = call %struct.aa_label* @aa_get_newest_cred_label(%struct.cred* %8)
  store %struct.aa_label* %9, %struct.aa_label** %5, align 8
  store %struct.file* null, %struct.file** %6, align 8
  %10 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %11 = call i32 @revalidate_tty(%struct.aa_label* %10)
  %12 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %13 = load i32, i32* @match_file, align 4
  %14 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %15 = call i32 @iterate_fd(%struct.files_struct* %12, i32 0, i32 %13, %struct.aa_label* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %47

19:                                               ; preds = %2
  %20 = load i32, i32* @O_RDWR, align 4
  %21 = load %struct.cred*, %struct.cred** %3, align 8
  %22 = call %struct.file* @dentry_open(i32* @aa_null, i32 %20, %struct.cred* %21)
  store %struct.file* %22, %struct.file** %6, align 8
  %23 = load %struct.file*, %struct.file** %6, align 8
  %24 = call i64 @IS_ERR(%struct.file* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store %struct.file* null, %struct.file** %6, align 8
  br label %27

27:                                               ; preds = %26, %19
  br label %28

28:                                               ; preds = %33, %27
  %29 = load i32, i32* %7, align 4
  %30 = sub i32 %29, 1
  %31 = load %struct.file*, %struct.file** %6, align 8
  %32 = call i32 @replace_fd(i32 %30, %struct.file* %31, i32 0)
  br label %33

33:                                               ; preds = %28
  %34 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @match_file, align 4
  %37 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %38 = call i32 @iterate_fd(%struct.files_struct* %34, i32 %35, i32 %36, %struct.aa_label* %37)
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %28, label %40

40:                                               ; preds = %33
  %41 = load %struct.file*, %struct.file** %6, align 8
  %42 = icmp ne %struct.file* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.file*, %struct.file** %6, align 8
  %45 = call i32 @fput(%struct.file* %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %18
  %48 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %49 = call i32 @aa_put_label(%struct.aa_label* %48)
  ret void
}

declare dso_local %struct.aa_label* @aa_get_newest_cred_label(%struct.cred*) #1

declare dso_local i32 @revalidate_tty(%struct.aa_label*) #1

declare dso_local i32 @iterate_fd(%struct.files_struct*, i32, i32, %struct.aa_label*) #1

declare dso_local %struct.file* @dentry_open(i32*, i32, %struct.cred*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @replace_fd(i32, %struct.file*, i32) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
