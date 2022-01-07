; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_whitelisted_cast.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_whitelisted_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whitelist_entry = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@whitelist = common dso_local global %struct.whitelist_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @whitelisted_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whitelisted_cast(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.whitelist_entry*, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @gimple_location(i32 %10)
  %12 = call i32 @expand_location(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.whitelist_entry*, %struct.whitelist_entry** @whitelist, align 8
  store %struct.whitelist_entry* %14, %struct.whitelist_entry** %8, align 8
  br label %15

15:                                               ; preds = %47, %3
  %16 = load %struct.whitelist_entry*, %struct.whitelist_entry** %8, align 8
  %17 = getelementptr inbounds %struct.whitelist_entry, %struct.whitelist_entry* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.whitelist_entry*, %struct.whitelist_entry** %8, align 8
  %24 = getelementptr inbounds %struct.whitelist_entry, %struct.whitelist_entry* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @strstr(i32 %22, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %47

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.whitelist_entry*, %struct.whitelist_entry** %8, align 8
  %33 = getelementptr inbounds %struct.whitelist_entry, %struct.whitelist_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @type_name_eq(i32 %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.whitelist_entry*, %struct.whitelist_entry** %8, align 8
  %41 = getelementptr inbounds %struct.whitelist_entry, %struct.whitelist_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @type_name_eq(i32 %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %51

46:                                               ; preds = %37, %29
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.whitelist_entry*, %struct.whitelist_entry** %8, align 8
  %49 = getelementptr inbounds %struct.whitelist_entry, %struct.whitelist_entry* %48, i32 1
  store %struct.whitelist_entry* %49, %struct.whitelist_entry** %8, align 8
  br label %15

50:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @expand_location(i32) #1

declare dso_local i32 @gimple_location(i32) #1

declare dso_local i32 @strstr(i32, i64) #1

declare dso_local i64 @type_name_eq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
