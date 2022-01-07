; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_comm.c_comm_str__put.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_comm.c_comm_str__put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_str = type { i32, i32, i32 }

@comm_str_lock = common dso_local global i32 0, align 4
@comm_str_root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comm_str*)* @comm_str__put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comm_str__put(%struct.comm_str* %0) #0 {
  %2 = alloca %struct.comm_str*, align 8
  store %struct.comm_str* %0, %struct.comm_str** %2, align 8
  %3 = load %struct.comm_str*, %struct.comm_str** %2, align 8
  %4 = icmp ne %struct.comm_str* %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load %struct.comm_str*, %struct.comm_str** %2, align 8
  %7 = getelementptr inbounds %struct.comm_str, %struct.comm_str* %6, i32 0, i32 2
  %8 = call i64 @refcount_dec_and_test(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = call i32 @down_write(i32* @comm_str_lock)
  %12 = load %struct.comm_str*, %struct.comm_str** %2, align 8
  %13 = getelementptr inbounds %struct.comm_str, %struct.comm_str* %12, i32 0, i32 1
  %14 = call i32 @rb_erase(i32* %13, i32* @comm_str_root)
  %15 = call i32 @up_write(i32* @comm_str_lock)
  %16 = load %struct.comm_str*, %struct.comm_str** %2, align 8
  %17 = getelementptr inbounds %struct.comm_str, %struct.comm_str* %16, i32 0, i32 0
  %18 = call i32 @zfree(i32* %17)
  %19 = load %struct.comm_str*, %struct.comm_str** %2, align 8
  %20 = call i32 @free(%struct.comm_str* %19)
  br label %21

21:                                               ; preds = %10, %5, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @free(%struct.comm_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
