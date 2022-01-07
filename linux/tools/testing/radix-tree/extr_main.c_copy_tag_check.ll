; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c_copy_tag_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_main.c_copy_tag_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ITEMS = common dso_local global i32 0, align 4
@XA_MARK_0 = common dso_local global i32 0, align 4
@XA_MARK_1 = common dso_local global i32 0, align 4
@XA_MARK_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_tag_check() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @tree, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @RADIX_TREE(i32 %10, i32 %11)
  %13 = load i32, i32* @ITEMS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %1, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %2, align 8
  store i64 0, i64* %5, align 8
  %17 = call i64 (...) @rand()
  store i64 %17, i64* %3, align 8
  %18 = call i64 (...) @rand()
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %0
  %23 = call i64 (...) @rand()
  %24 = urem i64 %23, 10
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %26, %22, %0
  %31 = call i64 (...) @rand()
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = and i64 %32, 1
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @item_insert(i32* @tree, i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %38, 2
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @item_tag_set(i32* @tree, i64 %49, i32 0)
  br label %51

51:                                               ; preds = %48, %35
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i64, i64* %7, align 8
  %54 = and i64 %53, 4
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i64, i64* %3, align 8
  %58 = sub i64 %57, 1
  %59 = call i32 @item_insert(i32* @tree, i64 %58)
  %60 = load i64, i64* %7, align 8
  %61 = and i64 %60, 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i64, i64* %3, align 8
  %65 = sub i64 %64, 1
  %66 = call i32 @item_tag_set(i32* @tree, i64 %65, i32 0)
  br label %67

67:                                               ; preds = %63, %56
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i64, i64* %7, align 8
  %70 = and i64 %69, 16
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @item_insert(i32* @tree, i64 %73)
  %75 = load i64, i64* %7, align 8
  %76 = and i64 %75, 32
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load i64, i64* %3, align 8
  %80 = load i64, i64* %4, align 8
  %81 = icmp ule i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @item_tag_set(i32* @tree, i64 %86, i32 0)
  br label %88

88:                                               ; preds = %85, %72
  br label %89

89:                                               ; preds = %88, %68
  %90 = load i64, i64* %7, align 8
  %91 = and i64 %90, 64
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i64, i64* %4, align 8
  %95 = add i64 %94, 1
  %96 = call i32 @item_insert(i32* @tree, i64 %95)
  %97 = load i64, i64* %7, align 8
  %98 = and i64 %97, 128
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i64, i64* %4, align 8
  %102 = add i64 %101, 1
  %103 = call i32 @item_tag_set(i32* @tree, i64 %102, i32 0)
  br label %104

104:                                              ; preds = %100, %93
  br label %105

105:                                              ; preds = %104, %89
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %156, %105
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @ITEMS, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %159

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %116, %110
  %112 = call i64 (...) @rand()
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %16, i64 %114
  store i64 %112, i64* %115, align 8
  br label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %16, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @item_lookup(i32* @tree, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %111, label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %16, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @item_insert(i32* @tree, i64 %127)
  %129 = call i64 (...) @rand()
  %130 = and i64 %129, 1
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %123
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %16, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @item_tag_set(i32* @tree, i64 %136, i32 0)
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %16, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %3, align 8
  %143 = icmp uge i64 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %132
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %16, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %4, align 8
  %150 = icmp ule i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i64, i64* %5, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %5, align 8
  br label %154

154:                                              ; preds = %151, %144, %132
  br label %155

155:                                              ; preds = %154, %123
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %106

159:                                              ; preds = %106
  %160 = load i64, i64* %3, align 8
  %161 = load i64, i64* %4, align 8
  %162 = load i32, i32* @ITEMS, align 4
  %163 = sext i32 %162 to i64
  %164 = load i32, i32* @XA_MARK_0, align 4
  %165 = load i32, i32* @XA_MARK_1, align 4
  %166 = call i64 @tag_tagged_items(i32* @tree, i64 %160, i64 %161, i64 %163, i32 %164, i32 %165)
  store i64 %166, i64* %6, align 8
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* %5, align 8
  %169 = icmp eq i64 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load i64, i64* %3, align 8
  %173 = load i64, i64* %4, align 8
  %174 = load i32, i32* @ITEMS, align 4
  %175 = call i32 @check_copied_tags(i32* @tree, i64 %172, i64 %173, i64* %16, i32 %174, i32 0, i32 1)
  %176 = call i64 (...) @rand()
  %177 = load i64, i64* %5, align 8
  %178 = udiv i64 %177, 10
  %179 = add i64 %178, 2
  %180 = urem i64 %176, %179
  store i64 %180, i64* %8, align 8
  %181 = load i64, i64* %3, align 8
  %182 = load i64, i64* %4, align 8
  %183 = load i64, i64* %8, align 8
  %184 = load i32, i32* @XA_MARK_0, align 4
  %185 = load i32, i32* @XA_MARK_2, align 4
  %186 = call i64 @tag_tagged_items(i32* @tree, i64 %181, i64 %182, i64 %183, i32 %184, i32 %185)
  store i64 %186, i64* %6, align 8
  %187 = load i64, i64* %6, align 8
  %188 = load i64, i64* %5, align 8
  %189 = icmp eq i64 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load i64, i64* %3, align 8
  %193 = load i64, i64* %4, align 8
  %194 = load i32, i32* @ITEMS, align 4
  %195 = call i32 @check_copied_tags(i32* @tree, i64 %192, i64 %193, i64* %16, i32 %194, i32 0, i32 2)
  %196 = call i32 @verify_tag_consistency(i32* @tree, i32 0)
  %197 = call i32 @verify_tag_consistency(i32* @tree, i32 1)
  %198 = call i32 @verify_tag_consistency(i32* @tree, i32 2)
  %199 = call i32 @item_kill_tree(i32* @tree)
  %200 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %200)
  ret void
}

declare dso_local i32 @RADIX_TREE(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @rand(...) #1

declare dso_local i32 @item_insert(i32*, i64) #1

declare dso_local i32 @item_tag_set(i32*, i64, i32) #1

declare dso_local i64 @item_lookup(i32*, i64) #1

declare dso_local i64 @tag_tagged_items(i32*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check_copied_tags(i32*, i64, i64, i64*, i32, i32, i32) #1

declare dso_local i32 @verify_tag_consistency(i32*, i32) #1

declare dso_local i32 @item_kill_tree(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
