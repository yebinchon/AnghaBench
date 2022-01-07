; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_aa_file_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_aa_file_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.file = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.aa_file_ctx = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_file_perm(i8* %0, %struct.aa_label* %1, %struct.file* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aa_file_ctx*, align 8
  %10 = alloca %struct.aa_label*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.aa_label* %1, %struct.aa_label** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %14 = icmp ne %struct.aa_label* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @AA_BUG(i32 %16)
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = icmp ne %struct.file* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @AA_BUG(i32 %21)
  %23 = load %struct.file*, %struct.file** %7, align 8
  %24 = call %struct.aa_file_ctx* @file_ctx(%struct.file* %23)
  store %struct.aa_file_ctx* %24, %struct.aa_file_ctx** %9, align 8
  %25 = call i32 (...) @rcu_read_lock()
  %26 = load %struct.aa_file_ctx*, %struct.aa_file_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.aa_file_ctx, %struct.aa_file_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.aa_label* @rcu_dereference(i32 %28)
  store %struct.aa_label* %29, %struct.aa_label** %10, align 8
  %30 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %31 = icmp ne %struct.aa_label* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @AA_BUG(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.aa_file_ctx*, %struct.aa_file_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.aa_file_ctx, %struct.aa_file_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  store i32 %40, i32* %11, align 4
  %41 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %42 = call i64 @unconfined(%struct.aa_label* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %4
  %45 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %46 = call i64 @unconfined(%struct.aa_label* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %53 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %54 = call i64 @aa_label_is_subset(%struct.aa_label* %52, %struct.aa_label* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %44, %4
  br label %95

57:                                               ; preds = %51, %48
  %58 = load %struct.file*, %struct.file** %7, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %57
  %64 = load %struct.file*, %struct.file** %7, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @path_mediated_fs(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %73 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %74 = load %struct.file*, %struct.file** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @__file_path_perm(i8* %71, %struct.aa_label* %72, %struct.aa_label* %73, %struct.file* %74, i32 %75, i32 %76)
  store i32 %77, i32* %12, align 4
  br label %94

78:                                               ; preds = %63, %57
  %79 = load %struct.file*, %struct.file** %7, align 8
  %80 = call %struct.TYPE_4__* @file_inode(%struct.file* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @S_ISSOCK(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load i8*, i8** %5, align 8
  %87 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %88 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %89 = load %struct.file*, %struct.file** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @__file_sock_perm(i8* %86, %struct.aa_label* %87, %struct.aa_label* %88, %struct.file* %89, i32 %90, i32 %91)
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %85, %78
  br label %94

94:                                               ; preds = %93, %70
  br label %95

95:                                               ; preds = %94, %56
  %96 = call i32 (...) @rcu_read_unlock()
  %97 = load i32, i32* %12, align 4
  ret i32 %97
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local %struct.aa_file_ctx* @file_ctx(%struct.file*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.aa_label* @rcu_dereference(i32) #1

declare dso_local i64 @unconfined(%struct.aa_label*) #1

declare dso_local i64 @aa_label_is_subset(%struct.aa_label*, %struct.aa_label*) #1

declare dso_local i64 @path_mediated_fs(i32) #1

declare dso_local i32 @__file_path_perm(i8*, %struct.aa_label*, %struct.aa_label*, %struct.file*, i32, i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local %struct.TYPE_4__* @file_inode(%struct.file*) #1

declare dso_local i32 @__file_sock_perm(i8*, %struct.aa_label*, %struct.aa_label*, %struct.file*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
