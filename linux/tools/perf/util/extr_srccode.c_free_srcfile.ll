; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_srccode.c_free_srcfile.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_srccode.c_free_srcfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcfile = type { i32, i32, i64, i32, i32, i32 }

@map_total_sz = common dso_local global i32 0, align 4
@num_srcfiles = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srcfile*)* @free_srcfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_srcfile(%struct.srcfile* %0) #0 {
  %2 = alloca %struct.srcfile*, align 8
  store %struct.srcfile* %0, %struct.srcfile** %2, align 8
  %3 = load %struct.srcfile*, %struct.srcfile** %2, align 8
  %4 = getelementptr inbounds %struct.srcfile, %struct.srcfile* %3, i32 0, i32 5
  %5 = call i32 @list_del_init(i32* %4)
  %6 = load %struct.srcfile*, %struct.srcfile** %2, align 8
  %7 = getelementptr inbounds %struct.srcfile, %struct.srcfile* %6, i32 0, i32 4
  %8 = call i32 @hlist_del(i32* %7)
  %9 = load %struct.srcfile*, %struct.srcfile** %2, align 8
  %10 = getelementptr inbounds %struct.srcfile, %struct.srcfile* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @map_total_sz, align 4
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @map_total_sz, align 4
  %16 = load %struct.srcfile*, %struct.srcfile** %2, align 8
  %17 = getelementptr inbounds %struct.srcfile, %struct.srcfile* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.srcfile*, %struct.srcfile** %2, align 8
  %20 = getelementptr inbounds %struct.srcfile, %struct.srcfile* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @munmap(i32 %18, i64 %21)
  %23 = load %struct.srcfile*, %struct.srcfile** %2, align 8
  %24 = getelementptr inbounds %struct.srcfile, %struct.srcfile* %23, i32 0, i32 1
  %25 = call i32 @zfree(i32* %24)
  %26 = load %struct.srcfile*, %struct.srcfile** %2, align 8
  %27 = getelementptr inbounds %struct.srcfile, %struct.srcfile* %26, i32 0, i32 0
  %28 = call i32 @zfree(i32* %27)
  %29 = load %struct.srcfile*, %struct.srcfile** %2, align 8
  %30 = call i32 @free(%struct.srcfile* %29)
  %31 = load i32, i32* @num_srcfiles, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* @num_srcfiles, align 4
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @munmap(i32, i64) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @free(%struct.srcfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
