; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_ns_revision_poll.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_ns_revision_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.aa_revision* }
%struct.aa_revision = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @ns_revision_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns_revision_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aa_revision*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.aa_revision*, %struct.aa_revision** %8, align 8
  store %struct.aa_revision* %9, %struct.aa_revision** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.aa_revision*, %struct.aa_revision** %5, align 8
  %11 = icmp ne %struct.aa_revision* %10, null
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = load %struct.aa_revision*, %struct.aa_revision** %5, align 8
  %14 = getelementptr inbounds %struct.aa_revision, %struct.aa_revision* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.aa_revision*, %struct.aa_revision** %5, align 8
  %18 = getelementptr inbounds %struct.aa_revision, %struct.aa_revision* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mutex_lock_nested(i32* %16, i32 %21)
  %23 = load %struct.file*, %struct.file** %3, align 8
  %24 = load %struct.aa_revision*, %struct.aa_revision** %5, align 8
  %25 = getelementptr inbounds %struct.aa_revision, %struct.aa_revision* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @poll_wait(%struct.file* %23, i32* %27, i32* %28)
  %30 = load %struct.aa_revision*, %struct.aa_revision** %5, align 8
  %31 = getelementptr inbounds %struct.aa_revision, %struct.aa_revision* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.aa_revision*, %struct.aa_revision** %5, align 8
  %34 = getelementptr inbounds %struct.aa_revision, %struct.aa_revision* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %32, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %12
  %40 = load i32, i32* @EPOLLIN, align 4
  %41 = load i32, i32* @EPOLLRDNORM, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %39, %12
  %46 = load %struct.aa_revision*, %struct.aa_revision** %5, align 8
  %47 = getelementptr inbounds %struct.aa_revision, %struct.aa_revision* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %51

51:                                               ; preds = %45, %2
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
