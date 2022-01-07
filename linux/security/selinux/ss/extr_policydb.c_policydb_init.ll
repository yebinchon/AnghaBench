; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_init.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_policydb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.TYPE_2__*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@SYM_NUM = common dso_local global i32 0, align 4
@symtab_sizes = common dso_local global i32* null, align 8
@filenametr_hash = common dso_local global i32 0, align 4
@filenametr_cmp = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rangetr_hash = common dso_local global i32 0, align 4
@rangetr_cmp = common dso_local global i32 0, align 4
@destroy_f = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*)* @policydb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policydb_init(%struct.policydb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.policydb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %3, align 8
  %6 = load %struct.policydb*, %struct.policydb** %3, align 8
  %7 = call i32 @memset(%struct.policydb* %6, i32 0, i32 40)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SYM_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.policydb*, %struct.policydb** %3, align 8
  %14 = getelementptr inbounds %struct.policydb, %struct.policydb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = load i32*, i32** @symtab_sizes, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @symtab_init(%struct.TYPE_2__* %18, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  br label %87

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.policydb*, %struct.policydb** %3, align 8
  %34 = getelementptr inbounds %struct.policydb, %struct.policydb* %33, i32 0, i32 6
  %35 = call i32 @avtab_init(i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %87

39:                                               ; preds = %32
  %40 = load %struct.policydb*, %struct.policydb** %3, align 8
  %41 = call i32 @roles_init(%struct.policydb* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %87

45:                                               ; preds = %39
  %46 = load %struct.policydb*, %struct.policydb** %3, align 8
  %47 = call i32 @cond_policydb_init(%struct.policydb* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %87

51:                                               ; preds = %45
  %52 = load i32, i32* @filenametr_hash, align 4
  %53 = load i32, i32* @filenametr_cmp, align 4
  %54 = call i8* @hashtab_create(i32 %52, i32 %53, i32 1024)
  %55 = load %struct.policydb*, %struct.policydb** %3, align 8
  %56 = getelementptr inbounds %struct.policydb, %struct.policydb* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.policydb*, %struct.policydb** %3, align 8
  %58 = getelementptr inbounds %struct.policydb, %struct.policydb* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %87

64:                                               ; preds = %51
  %65 = load i32, i32* @rangetr_hash, align 4
  %66 = load i32, i32* @rangetr_cmp, align 4
  %67 = call i8* @hashtab_create(i32 %65, i32 %66, i32 256)
  %68 = load %struct.policydb*, %struct.policydb** %3, align 8
  %69 = getelementptr inbounds %struct.policydb, %struct.policydb* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.policydb*, %struct.policydb** %3, align 8
  %71 = getelementptr inbounds %struct.policydb, %struct.policydb* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %87

77:                                               ; preds = %64
  %78 = load %struct.policydb*, %struct.policydb** %3, align 8
  %79 = getelementptr inbounds %struct.policydb, %struct.policydb* %78, i32 0, i32 5
  %80 = call i32 @ebitmap_init(i32* %79)
  %81 = load %struct.policydb*, %struct.policydb** %3, align 8
  %82 = getelementptr inbounds %struct.policydb, %struct.policydb* %81, i32 0, i32 4
  %83 = call i32 @ebitmap_init(i32* %82)
  %84 = load %struct.policydb*, %struct.policydb** %3, align 8
  %85 = getelementptr inbounds %struct.policydb, %struct.policydb* %84, i32 0, i32 3
  %86 = call i32 @ebitmap_init(i32* %85)
  store i32 0, i32* %2, align 4
  br label %129

87:                                               ; preds = %74, %61, %50, %44, %38, %27
  %88 = load %struct.policydb*, %struct.policydb** %3, align 8
  %89 = getelementptr inbounds %struct.policydb, %struct.policydb* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @hashtab_destroy(i8* %90)
  %92 = load %struct.policydb*, %struct.policydb** %3, align 8
  %93 = getelementptr inbounds %struct.policydb, %struct.policydb* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @hashtab_destroy(i8* %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %124, %87
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @SYM_NUM, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %96
  %101 = load %struct.policydb*, %struct.policydb** %3, align 8
  %102 = getelementptr inbounds %struct.policydb, %struct.policydb* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32*, i32** @destroy_f, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @hashtab_map(i8* %108, i32 %113, i32* null)
  %115 = load %struct.policydb*, %struct.policydb** %3, align 8
  %116 = getelementptr inbounds %struct.policydb, %struct.policydb* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @hashtab_destroy(i8* %122)
  br label %124

124:                                              ; preds = %100
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %96

127:                                              ; preds = %96
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %77
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @memset(%struct.policydb*, i32, i32) #1

declare dso_local i32 @symtab_init(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @avtab_init(i32*) #1

declare dso_local i32 @roles_init(%struct.policydb*) #1

declare dso_local i32 @cond_policydb_init(%struct.policydb*) #1

declare dso_local i8* @hashtab_create(i32, i32, i32) #1

declare dso_local i32 @ebitmap_init(i32*) #1

declare dso_local i32 @hashtab_destroy(i8*) #1

declare dso_local i32 @hashtab_map(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
