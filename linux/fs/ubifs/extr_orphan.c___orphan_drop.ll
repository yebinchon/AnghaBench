; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c___orphan_drop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c___orphan_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32 }
%struct.ubifs_orphan = type { i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_orphan*)* @__orphan_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__orphan_drop(%struct.ubifs_info* %0, %struct.ubifs_orphan* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_orphan*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_orphan* %1, %struct.ubifs_orphan** %4, align 8
  %5 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %4, align 8
  %6 = getelementptr inbounds %struct.ubifs_orphan, %struct.ubifs_orphan* %5, i32 0, i32 3
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 2
  %9 = call i32 @rb_erase(i32* %6, i32* %8)
  %10 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %4, align 8
  %11 = getelementptr inbounds %struct.ubifs_orphan, %struct.ubifs_orphan* %10, i32 0, i32 2
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %4, align 8
  %18 = getelementptr inbounds %struct.ubifs_orphan, %struct.ubifs_orphan* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %4, align 8
  %23 = getelementptr inbounds %struct.ubifs_orphan, %struct.ubifs_orphan* %22, i32 0, i32 0
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %4, align 8
  %31 = call i32 @kfree(%struct.ubifs_orphan* %30)
  ret void
}

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.ubifs_orphan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
