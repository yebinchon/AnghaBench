; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_wbuf_add_ino_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_wbuf_add_ino_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_wbuf = type { i32, i32, i32*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_wbuf_add_ino_nolock(%struct.ubifs_wbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.ubifs_wbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.ubifs_wbuf* %0, %struct.ubifs_wbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %3, align 8
  %6 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %3, align 8
  %12 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %3, align 8
  %24 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  store i32 %19, i32* %28, align 4
  br label %29

29:                                               ; preds = %18, %10
  %30 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %3, align 8
  %31 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  br label %33

33:                                               ; preds = %29, %9
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
