; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_ubifs_recover_size_accum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_ubifs_recover_size_accum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.size_entry = type { i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_recover_size_accum(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %union.ubifs_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.size_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %14 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %15 = call i32 @key_inum(%struct.ubifs_info* %13, %union.ubifs_key* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %17 = load %union.ubifs_key*, %union.ubifs_key** %7, align 8
  %18 = call i32 @key_type(%struct.ubifs_info* %16, %union.ubifs_key* %17)
  switch i32 %18, label %89 [
    i32 129, label %19
    i32 130, label %50
    i32 128, label %78
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @remove_ino(%struct.ubifs_info* %23, i32 %24)
  br label %49

26:                                               ; preds = %19
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.size_entry* @find_ino(%struct.ubifs_info* %27, i32 %28)
  store %struct.size_entry* %29, %struct.size_entry** %11, align 8
  %30 = load %struct.size_entry*, %struct.size_entry** %11, align 8
  %31 = icmp ne %struct.size_entry* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.size_entry*, %struct.size_entry** %11, align 8
  %35 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.size_entry*, %struct.size_entry** %11, align 8
  %37 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %48

38:                                               ; preds = %26
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @add_ino(%struct.ubifs_info* %39, i32 %40, i8* %41, i8* null, i32 1)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %90

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %32
  br label %49

49:                                               ; preds = %48, %22
  br label %89

50:                                               ; preds = %4
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call %struct.size_entry* @find_ino(%struct.ubifs_info* %51, i32 %52)
  store %struct.size_entry* %53, %struct.size_entry** %11, align 8
  %54 = load %struct.size_entry*, %struct.size_entry** %11, align 8
  %55 = icmp ne %struct.size_entry* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.size_entry*, %struct.size_entry** %11, align 8
  %59 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ugt i8* %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.size_entry*, %struct.size_entry** %11, align 8
  %65 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %56
  br label %77

67:                                               ; preds = %50
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @add_ino(%struct.ubifs_info* %68, i32 %69, i8* null, i8* %70, i32 0)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %5, align 4
  br label %90

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %66
  br label %89

78:                                               ; preds = %4
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call %struct.size_entry* @find_ino(%struct.ubifs_info* %79, i32 %80)
  store %struct.size_entry* %81, %struct.size_entry** %11, align 8
  %82 = load %struct.size_entry*, %struct.size_entry** %11, align 8
  %83 = icmp ne %struct.size_entry* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.size_entry*, %struct.size_entry** %11, align 8
  %87 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %84, %78
  br label %89

89:                                               ; preds = %4, %88, %77, %49
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %74, %45
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @key_inum(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @remove_ino(%struct.ubifs_info*, i32) #1

declare dso_local %struct.size_entry* @find_ino(%struct.ubifs_info*, i32) #1

declare dso_local i32 @add_ino(%struct.ubifs_info*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
