; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file.c___put_unused_fd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file.c___put_unused_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_struct = type { i32 }
%struct.fdtable = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.files_struct*, i32)* @__put_unused_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__put_unused_fd(%struct.files_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.files_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fdtable*, align 8
  store %struct.files_struct* %0, %struct.files_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.files_struct*, %struct.files_struct** %3, align 8
  %7 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %6)
  store %struct.fdtable* %7, %struct.fdtable** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %10 = call i32 @__clear_open_fd(i32 %8, %struct.fdtable* %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.files_struct*, %struct.files_struct** %3, align 8
  %13 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.files_struct*, %struct.files_struct** %3, align 8
  %19 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local i32 @__clear_open_fd(i32, %struct.fdtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
