; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_read_one_lp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_read_one_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_lprops = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"cannot read properties of LEB %d, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_read_one_lp(%struct.ubifs_info* %0, i32 %1, %struct.ubifs_lprops* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_lprops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ubifs_lprops* %2, %struct.ubifs_lprops** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %10 = call i32 @ubifs_get_lprops(%struct.ubifs_info* %9)
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.ubifs_lprops* @ubifs_lpt_lookup(%struct.ubifs_info* %11, i32 %12)
  store %struct.ubifs_lprops* %13, %struct.ubifs_lprops** %8, align 8
  %14 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %15 = call i64 @IS_ERR(%struct.ubifs_lprops* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.ubifs_lprops* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ubifs_err(%struct.ubifs_info* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %26 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %8, align 8
  %27 = call i32 @memcpy(%struct.ubifs_lprops* %25, %struct.ubifs_lprops* %26, i32 4)
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %30 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %29)
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @ubifs_get_lprops(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ubifs_lprops*, %struct.ubifs_lprops*, i32) #1

declare dso_local i32 @ubifs_release_lprops(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
