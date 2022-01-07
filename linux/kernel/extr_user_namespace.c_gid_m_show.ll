; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_gid_m_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_gid_m_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.user_namespace* }
%struct.user_namespace = type { %struct.user_namespace* }
%struct.uid_gid_extent = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"%10u %10u %10u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @gid_m_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gid_m_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca %struct.uid_gid_extent*, align 8
  %7 = alloca %struct.user_namespace*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.user_namespace*, %struct.user_namespace** %10, align 8
  store %struct.user_namespace* %11, %struct.user_namespace** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.uid_gid_extent*
  store %struct.uid_gid_extent* %13, %struct.uid_gid_extent** %6, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = call %struct.user_namespace* @seq_user_ns(%struct.seq_file* %14)
  store %struct.user_namespace* %15, %struct.user_namespace** %7, align 8
  %16 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %17 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %18 = icmp eq %struct.user_namespace* %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %21 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %20, i32 0, i32 0
  %22 = load %struct.user_namespace*, %struct.user_namespace** %21, align 8
  %23 = icmp ne %struct.user_namespace* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %26 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %25, i32 0, i32 0
  %27 = load %struct.user_namespace*, %struct.user_namespace** %26, align 8
  store %struct.user_namespace* %27, %struct.user_namespace** %7, align 8
  br label %28

28:                                               ; preds = %24, %19, %2
  %29 = load %struct.user_namespace*, %struct.user_namespace** %7, align 8
  %30 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %6, align 8
  %31 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @KGIDT_INIT(i32 %32)
  %34 = call i32 @from_kgid(%struct.user_namespace* %29, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %6, align 8
  %37 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %6, align 8
  %41 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %42)
  ret i32 0
}

declare dso_local %struct.user_namespace* @seq_user_ns(%struct.seq_file*) #1

declare dso_local i32 @from_kgid(%struct.user_namespace*, i32) #1

declare dso_local i32 @KGIDT_INIT(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
