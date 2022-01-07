; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_file_open.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.rchan_buf* }
%struct.rchan_buf = type { i32 }
%struct.file = type { %struct.rchan_buf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @relay_file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relay_file_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.rchan_buf*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load %struct.rchan_buf*, %struct.rchan_buf** %7, align 8
  store %struct.rchan_buf* %8, %struct.rchan_buf** %5, align 8
  %9 = load %struct.rchan_buf*, %struct.rchan_buf** %5, align 8
  %10 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %9, i32 0, i32 0
  %11 = call i32 @kref_get(i32* %10)
  %12 = load %struct.rchan_buf*, %struct.rchan_buf** %5, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  store %struct.rchan_buf* %12, %struct.rchan_buf** %14, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = call i32 @nonseekable_open(%struct.inode* %15, %struct.file* %16)
  ret i32 %17
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
