; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_message.c___xfs_printk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_message.c___xfs_printk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i64 }
%struct.va_format = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%sXFS (%s): %pV\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%sXFS: %pV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.xfs_mount*, %struct.va_format*)* @__xfs_printk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfs_printk(i8* %0, %struct.xfs_mount* %1, %struct.va_format* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.va_format*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.xfs_mount* %1, %struct.xfs_mount** %5, align 8
  store %struct.va_format* %2, %struct.va_format** %6, align 8
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %8 = icmp ne %struct.xfs_mount* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %11 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.va_format*
  %20 = load %struct.va_format*, %struct.va_format** %6, align 8
  %21 = call i32 (i8*, i8*, %struct.va_format*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %15, %struct.va_format* %19, %struct.va_format* %20)
  br label %26

22:                                               ; preds = %9, %3
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.va_format*, %struct.va_format** %6, align 8
  %25 = call i32 (i8*, i8*, %struct.va_format*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %23, %struct.va_format* %24)
  br label %26

26:                                               ; preds = %22, %14
  ret void
}

declare dso_local i32 @printk(i8*, i8*, %struct.va_format*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
