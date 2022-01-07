; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdebug.c___dlm_print_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdebug.c___dlm_print_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock = type { i32, i64, i64, i64, i64, i64, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [151 x i8] c"    type=%d, conv=%d, node=%u, cookie=%u:%llu, ref=%u, ast=(empty=%c,pend=%c), bast=(empty=%c,pend=%c), pending=(conv=%c,lock=%c,cancel=%c,unlock=%c)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lock*)* @__dlm_print_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dlm_print_lock(%struct.dlm_lock* %0) #0 {
  %2 = alloca %struct.dlm_lock*, align 8
  store %struct.dlm_lock* %0, %struct.dlm_lock** %2, align 8
  %3 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %4 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %3, i32 0, i32 0
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %7 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %6, i32 0, i32 10
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %11 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %10, i32 0, i32 10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %15 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %14, i32 0, i32 10
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %19 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %18, i32 0, i32 10
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @be64_to_cpu(i32 %21)
  %23 = call i32 @dlm_get_lock_cookie_node(i32 %22)
  %24 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %25 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @be64_to_cpu(i32 %27)
  %29 = call i32 @dlm_get_lock_cookie_seq(i32 %28)
  %30 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %31 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %30, i32 0, i32 9
  %32 = call i32 @kref_read(i32* %31)
  %33 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %34 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %33, i32 0, i32 8
  %35 = call i64 @list_empty(i32* %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 121, i32 110
  %39 = trunc i32 %38 to i8
  %40 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %41 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 121, i32 110
  %46 = trunc i32 %45 to i8
  %47 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %48 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %47, i32 0, i32 6
  %49 = call i64 @list_empty(i32* %48)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 121, i32 110
  %53 = trunc i32 %52 to i8
  %54 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %55 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 121, i32 110
  %60 = trunc i32 %59 to i8
  %61 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %62 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 121, i32 110
  %67 = trunc i32 %66 to i8
  %68 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %69 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 121, i32 110
  %74 = trunc i32 %73 to i8
  %75 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %76 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 121, i32 110
  %81 = trunc i32 %80 to i8
  %82 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %83 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 121, i32 110
  %88 = trunc i32 %87 to i8
  %89 = call i32 @printk(i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %17, i32 %23, i32 %29, i32 %32, i8 signext %39, i8 signext %46, i8 signext %53, i8 signext %60, i8 signext %67, i8 signext %74, i8 signext %81, i8 signext %88)
  %90 = load %struct.dlm_lock*, %struct.dlm_lock** %2, align 8
  %91 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32, i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @dlm_get_lock_cookie_node(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dlm_get_lock_cookie_seq(i32) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
