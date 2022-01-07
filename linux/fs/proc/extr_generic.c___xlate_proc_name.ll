; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c___xlate_proc_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c___xlate_proc_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }

@proc_root = common dso_local global %struct.proc_dir_entry zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"name '%s'\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.proc_dir_entry**, i8**)* @__xlate_proc_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xlate_proc_name(i8* %0, %struct.proc_dir_entry** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.proc_dir_entry**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.proc_dir_entry*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.proc_dir_entry** %1, %struct.proc_dir_entry*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %6, align 8
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %13, align 8
  store %struct.proc_dir_entry* %14, %struct.proc_dir_entry** %10, align 8
  %15 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %16 = icmp ne %struct.proc_dir_entry* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.proc_dir_entry* @proc_root, %struct.proc_dir_entry** %10, align 8
  br label %18

18:                                               ; preds = %17, %3
  br label %19

19:                                               ; preds = %18, %43
  %20 = load i8*, i8** %8, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 47)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %49

25:                                               ; preds = %19
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call %struct.proc_dir_entry* @pde_subdir_find(%struct.proc_dir_entry* %32, i8* %33, i32 %34)
  store %struct.proc_dir_entry* %35, %struct.proc_dir_entry** %10, align 8
  %36 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %37 = icmp ne %struct.proc_dir_entry* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %25
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %25
  %44 = load i32, i32* %11, align 4
  %45 = add i32 %44, 1
  %46 = load i8*, i8** %8, align 8
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %8, align 8
  br label %19

49:                                               ; preds = %24
  %50 = load i8*, i8** %8, align 8
  %51 = load i8**, i8*** %7, align 8
  store i8* %50, i8** %51, align 8
  %52 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %53 = load %struct.proc_dir_entry**, %struct.proc_dir_entry*** %6, align 8
  store %struct.proc_dir_entry* %52, %struct.proc_dir_entry** %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %38
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.proc_dir_entry* @pde_subdir_find(%struct.proc_dir_entry*, i8*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
