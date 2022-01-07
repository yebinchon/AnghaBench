; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_hashmap.c_hashmap__insert.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_hashmap.c_hashmap__insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32, i32*, i32, i32, i32 (i8*, i32)* }
%struct.hashmap_entry = type { i8*, i8* }

@HASHMAP_APPEND = common dso_local global i32 0, align 4
@HASHMAP_SET = common dso_local global i32 0, align 4
@HASHMAP_UPDATE = common dso_local global i32 0, align 4
@HASHMAP_ADD = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashmap__insert(%struct.hashmap* %0, i8* %1, i8* %2, i32 %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hashmap*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.hashmap_entry*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.hashmap* %0, %struct.hashmap** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = load i8**, i8*** %12, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i8**, i8*** %12, align 8
  store i8* null, i8** %20, align 8
  br label %21

21:                                               ; preds = %19, %6
  %22 = load i8**, i8*** %13, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8**, i8*** %13, align 8
  store i8* null, i8** %25, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %28 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %27, i32 0, i32 4
  %29 = load i32 (i8*, i32)*, i32 (i8*, i32)** %28, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %32 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %29(i8* %30, i32 %33)
  %35 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %36 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @hash_bits(i32 %34, i32 %37)
  store i64 %38, i64* %15, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @HASHMAP_APPEND, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %26
  %43 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %15, align 8
  %46 = call i64 @hashmap_find_entry(%struct.hashmap* %43, i8* %44, i64 %45, i32* null, %struct.hashmap_entry** %14)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %42
  %49 = load i8**, i8*** %12, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.hashmap_entry*, %struct.hashmap_entry** %14, align 8
  %53 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %12, align 8
  store i8* %54, i8** %55, align 8
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i8**, i8*** %13, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.hashmap_entry*, %struct.hashmap_entry** %14, align 8
  %61 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %13, align 8
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @HASHMAP_SET, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @HASHMAP_UPDATE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68, %64
  %73 = load i8*, i8** %9, align 8
  %74 = load %struct.hashmap_entry*, %struct.hashmap_entry** %14, align 8
  %75 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.hashmap_entry*, %struct.hashmap_entry** %14, align 8
  %78 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  store i32 0, i32* %7, align 4
  br label %144

79:                                               ; preds = %68
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @HASHMAP_ADD, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @EEXIST, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %144

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %42, %26
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @HASHMAP_UPDATE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @ENOENT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %144

95:                                               ; preds = %88
  %96 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %97 = call i64 @hashmap_needs_to_grow(%struct.hashmap* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %101 = call i32 @hashmap_grow(%struct.hashmap* %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %7, align 4
  br label %144

106:                                              ; preds = %99
  %107 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %108 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %107, i32 0, i32 4
  %109 = load i32 (i8*, i32)*, i32 (i8*, i32)** %108, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %112 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 %109(i8* %110, i32 %113)
  %115 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %116 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @hash_bits(i32 %114, i32 %117)
  store i64 %118, i64* %15, align 8
  br label %119

119:                                              ; preds = %106, %95
  %120 = call %struct.hashmap_entry* @malloc(i32 16)
  store %struct.hashmap_entry* %120, %struct.hashmap_entry** %14, align 8
  %121 = load %struct.hashmap_entry*, %struct.hashmap_entry** %14, align 8
  %122 = icmp ne %struct.hashmap_entry* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %7, align 4
  br label %144

126:                                              ; preds = %119
  %127 = load i8*, i8** %9, align 8
  %128 = load %struct.hashmap_entry*, %struct.hashmap_entry** %14, align 8
  %129 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = load %struct.hashmap_entry*, %struct.hashmap_entry** %14, align 8
  %132 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %134 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %15, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load %struct.hashmap_entry*, %struct.hashmap_entry** %14, align 8
  %139 = call i32 @hashmap_add_entry(i32* %137, %struct.hashmap_entry* %138)
  %140 = load %struct.hashmap*, %struct.hashmap** %8, align 8
  %141 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %126, %123, %104, %92, %83, %72
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i64 @hash_bits(i32, i32) #1

declare dso_local i64 @hashmap_find_entry(%struct.hashmap*, i8*, i64, i32*, %struct.hashmap_entry**) #1

declare dso_local i64 @hashmap_needs_to_grow(%struct.hashmap*) #1

declare dso_local i32 @hashmap_grow(%struct.hashmap*) #1

declare dso_local %struct.hashmap_entry* @malloc(i32) #1

declare dso_local i32 @hashmap_add_entry(i32*, %struct.hashmap_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
