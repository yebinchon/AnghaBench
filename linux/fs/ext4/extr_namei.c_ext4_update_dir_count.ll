; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_update_dir_count.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_update_dir_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_renament = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ext4_renament*)* @ext4_update_dir_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_update_dir_count(i32* %0, %struct.ext4_renament* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ext4_renament*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ext4_renament* %1, %struct.ext4_renament** %4, align 8
  %5 = load %struct.ext4_renament*, %struct.ext4_renament** %4, align 8
  %6 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load %struct.ext4_renament*, %struct.ext4_renament** %4, align 8
  %11 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.ext4_renament*, %struct.ext4_renament** %4, align 8
  %17 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ext4_dec_count(i32* %15, i32 %18)
  br label %26

20:                                               ; preds = %9
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.ext4_renament*, %struct.ext4_renament** %4, align 8
  %23 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ext4_inc_count(i32* %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.ext4_renament*, %struct.ext4_renament** %4, align 8
  %29 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ext4_mark_inode_dirty(i32* %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @ext4_dec_count(i32*, i32) #1

declare dso_local i32 @ext4_inc_count(i32*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
