; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_merge.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i32, i32 }
%struct.btree_geo = type { i32 }

@MAX_KEYLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btree_merge(%struct.btree_head* %0, %struct.btree_head* %1, %struct.btree_geo* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btree_head*, align 8
  %7 = alloca %struct.btree_head*, align 8
  %8 = alloca %struct.btree_geo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btree_head* %0, %struct.btree_head** %6, align 8
  store %struct.btree_head* %1, %struct.btree_head** %7, align 8
  store %struct.btree_geo* %2, %struct.btree_geo** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @MAX_KEYLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @MAX_KEYLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %23 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %24 = load %struct.btree_head*, %struct.btree_head** %7, align 8
  %25 = icmp eq %struct.btree_head* %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %29 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %4
  %33 = load %struct.btree_head*, %struct.btree_head** %7, align 8
  %34 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %37 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.btree_head*, %struct.btree_head** %7, align 8
  %39 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %42 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.btree_head*, %struct.btree_head** %7, align 8
  %44 = call i32 @__btree_init(%struct.btree_head* %43)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %74

45:                                               ; preds = %4
  br label %46

46:                                               ; preds = %65, %45
  %47 = load %struct.btree_head*, %struct.btree_head** %7, align 8
  %48 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %49 = call i32 @btree_last(%struct.btree_head* %47, %struct.btree_geo* %48, i64* %19)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %73

52:                                               ; preds = %46
  %53 = load %struct.btree_head*, %struct.btree_head** %7, align 8
  %54 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %55 = call i8* @btree_lookup(%struct.btree_head* %53, %struct.btree_geo* %54, i64* %19)
  store i8* %55, i8** %13, align 8
  %56 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %57 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @btree_insert(%struct.btree_head* %56, %struct.btree_geo* %57, i64* %19, i8* %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %74

65:                                               ; preds = %52
  %66 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %67 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @longcpy(i64* %22, i64* %19, i32 %68)
  %70 = load %struct.btree_head*, %struct.btree_head** %7, align 8
  %71 = load %struct.btree_geo*, %struct.btree_geo** %8, align 8
  %72 = call i32 @btree_remove(%struct.btree_head* %70, %struct.btree_geo* %71, i64* %22)
  br label %46

73:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %74

74:                                               ; preds = %73, %63, %32
  %75 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @__btree_init(%struct.btree_head*) #2

declare dso_local i32 @btree_last(%struct.btree_head*, %struct.btree_geo*, i64*) #2

declare dso_local i8* @btree_lookup(%struct.btree_head*, %struct.btree_geo*, i64*) #2

declare dso_local i32 @btree_insert(%struct.btree_head*, %struct.btree_geo*, i64*, i8*, i32) #2

declare dso_local i32 @longcpy(i64*, i64*, i32) #2

declare dso_local i32 @btree_remove(%struct.btree_head*, %struct.btree_geo*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
