; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_write_item.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_write_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.avtab_node = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@AVTAB_XPERMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avtab_write_item(%struct.policydb* %0, %struct.avtab_node* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.avtab_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.avtab_node* %1, %struct.avtab_node** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %15 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %27 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %33 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cpu_to_le16(i32 %35)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %39 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cpu_to_le16(i32 %41)
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %42, i32* %43, align 8
  %44 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %45 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpu_to_le16(i32 %47)
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @put_entry(i32* %50, i32 4, i32 4, i8* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %3
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %152

57:                                               ; preds = %3
  %58 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %59 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AVTAB_XPERMS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %136

65:                                               ; preds = %57
  %66 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %67 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @put_entry(i32* %71, i32 4, i32 1, i8* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %152

78:                                               ; preds = %65
  %79 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %80 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @put_entry(i32* %84, i32 4, i32 1, i8* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %152

91:                                               ; preds = %78
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %121, %91
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %95 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @ARRAY_SIZE(i32* %101)
  %103 = icmp ult i32 %93, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %92
  %105 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %106 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @cpu_to_le32(i32 %116)
  %118 = load i32, i32* %12, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %25, i64 %119
  store i32 %117, i32* %120, align 4
  br label %121

121:                                              ; preds = %104
  %122 = load i32, i32* %12, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %92

124:                                              ; preds = %92
  %125 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %126 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @ARRAY_SIZE(i32* %132)
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @put_entry(i32* %25, i32 4, i32 %133, i8* %134)
  store i32 %135, i32* %11, align 4
  br label %146

136:                                              ; preds = %57
  %137 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %138 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @cpu_to_le32(i32 %141)
  %143 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %142, i32* %143, align 16
  %144 = load i8*, i8** %7, align 8
  %145 = call i32 @put_entry(i32* %25, i32 4, i32 1, i8* %144)
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %136, %124
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %152

151:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %152

152:                                              ; preds = %151, %149, %89, %76, %55
  %153 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
