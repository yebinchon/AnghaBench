; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c_erase_deleted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c_erase_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.ubifs_orphan*, i32 }
%struct.ubifs_orphan = type { i32, i64, i32, i32, i32, %struct.ubifs_orphan* }

@.str = private unnamed_addr constant [24 x i8] c"deleting orphan ino %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*)* @erase_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @erase_deleted(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca %struct.ubifs_orphan*, align 8
  %4 = alloca %struct.ubifs_orphan*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %5 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %6 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %8, i32 0, i32 2
  %10 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %9, align 8
  store %struct.ubifs_orphan* %10, %struct.ubifs_orphan** %4, align 8
  br label %11

11:                                               ; preds = %14, %1
  %12 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %4, align 8
  %13 = icmp ne %struct.ubifs_orphan* %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %4, align 8
  store %struct.ubifs_orphan* %15, %struct.ubifs_orphan** %3, align 8
  %16 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %3, align 8
  %17 = getelementptr inbounds %struct.ubifs_orphan, %struct.ubifs_orphan* %16, i32 0, i32 5
  %18 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %17, align 8
  store %struct.ubifs_orphan* %18, %struct.ubifs_orphan** %4, align 8
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %20 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_orphan, %struct.ubifs_orphan* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @ubifs_assert(%struct.ubifs_info* %19, i32 %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %28 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %3, align 8
  %29 = getelementptr inbounds %struct.ubifs_orphan, %struct.ubifs_orphan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ubifs_assert(%struct.ubifs_info* %27, i32 %30)
  %32 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %3, align 8
  %33 = getelementptr inbounds %struct.ubifs_orphan, %struct.ubifs_orphan* %32, i32 0, i32 3
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 3
  %36 = call i32 @rb_erase(i32* %33, i32* %35)
  %37 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %3, align 8
  %38 = getelementptr inbounds %struct.ubifs_orphan, %struct.ubifs_orphan* %37, i32 0, i32 2
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %3, align 8
  %45 = getelementptr inbounds %struct.ubifs_orphan, %struct.ubifs_orphan* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dbg_gen(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load %struct.ubifs_orphan*, %struct.ubifs_orphan** %3, align 8
  %49 = call i32 @kfree(%struct.ubifs_orphan* %48)
  br label %11

50:                                               ; preds = %11
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 2
  store %struct.ubifs_orphan* null, %struct.ubifs_orphan** %52, align 8
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock(i32* %54)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dbg_gen(i8*, i64) #1

declare dso_local i32 @kfree(%struct.ubifs_orphan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
