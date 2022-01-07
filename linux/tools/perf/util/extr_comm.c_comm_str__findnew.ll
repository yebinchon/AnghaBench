; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_comm.c_comm_str__findnew.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_comm.c_comm_str__findnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_str = type { i32 }
%struct.rb_root = type { i32 }

@comm_str_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comm_str* (i8*, %struct.rb_root*)* @comm_str__findnew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comm_str* @comm_str__findnew(i8* %0, %struct.rb_root* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.comm_str*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.rb_root* %1, %struct.rb_root** %4, align 8
  %6 = call i32 @down_write(i32* @comm_str_lock)
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %9 = call %struct.comm_str* @__comm_str__findnew(i8* %7, %struct.rb_root* %8)
  store %struct.comm_str* %9, %struct.comm_str** %5, align 8
  %10 = call i32 @up_write(i32* @comm_str_lock)
  %11 = load %struct.comm_str*, %struct.comm_str** %5, align 8
  ret %struct.comm_str* %11
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.comm_str* @__comm_str__findnew(i8*, %struct.rb_root*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
