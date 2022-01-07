; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_ns_revision_open.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_ns_revision_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.aa_revision* }
%struct.aa_revision = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ns_revision_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns_revision_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.aa_revision*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.aa_revision* @kzalloc(i32 8, i32 %7)
  store %struct.aa_revision* %8, %struct.aa_revision** %6, align 8
  %9 = load %struct.aa_revision*, %struct.aa_revision** %6, align 8
  %10 = icmp ne %struct.aa_revision* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @aa_get_ns(i32 %17)
  %19 = load %struct.aa_revision*, %struct.aa_revision** %6, align 8
  %20 = getelementptr inbounds %struct.aa_revision, %struct.aa_revision* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.aa_revision*, %struct.aa_revision** %6, align 8
  %22 = getelementptr inbounds %struct.aa_revision, %struct.aa_revision* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = call i64 (...) @aa_get_current_ns()
  %27 = load %struct.aa_revision*, %struct.aa_revision** %6, align 8
  %28 = getelementptr inbounds %struct.aa_revision, %struct.aa_revision* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %14
  %30 = load %struct.aa_revision*, %struct.aa_revision** %6, align 8
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  store %struct.aa_revision* %30, %struct.aa_revision** %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.aa_revision* @kzalloc(i32, i32) #1

declare dso_local i64 @aa_get_ns(i32) #1

declare dso_local i64 @aa_get_current_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
