; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_inflate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie = type { i32 }
%struct.key_vector = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"In inflate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key_vector* (%struct.trie*, %struct.key_vector*)* @inflate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key_vector* @inflate(%struct.trie* %0, %struct.key_vector* %1) #0 {
  %3 = alloca %struct.key_vector*, align 8
  %4 = alloca %struct.trie*, align 8
  %5 = alloca %struct.key_vector*, align 8
  %6 = alloca %struct.key_vector*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.key_vector*, align 8
  %10 = alloca %struct.key_vector*, align 8
  %11 = alloca %struct.key_vector*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.trie* %0, %struct.trie** %4, align 8
  store %struct.key_vector* %1, %struct.key_vector** %5, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %16 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %19 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %20, 1
  %22 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %23 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = call %struct.key_vector* @tnode_new(i32 %17, i32 %21, i32 %25)
  store %struct.key_vector* %26, %struct.key_vector** %6, align 8
  %27 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %28 = icmp ne %struct.key_vector* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %195

30:                                               ; preds = %2
  %31 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %32 = call i32 @tnode_free_init(%struct.key_vector* %31)
  %33 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %34 = call i64 @child_length(%struct.key_vector* %33)
  store i64 %34, i64* %7, align 8
  %35 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %36 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %167, %72, %55, %49, %30
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %187

42:                                               ; preds = %39
  %43 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %7, align 8
  %46 = call %struct.key_vector* @get_child(%struct.key_vector* %43, i64 %45)
  store %struct.key_vector* %46, %struct.key_vector** %9, align 8
  %47 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %48 = icmp ne %struct.key_vector* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %39

50:                                               ; preds = %42
  %51 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %52 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %53 = call i32 @tnode_full(%struct.key_vector* %51, %struct.key_vector* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %57 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %58 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %61 = call i32 @get_index(i32 %59, %struct.key_vector* %60)
  %62 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %63 = call i32 @put_child(%struct.key_vector* %56, i32 %61, %struct.key_vector* %62)
  br label %39

64:                                               ; preds = %50
  %65 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %66 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %67 = call i32 @tnode_free_append(%struct.key_vector* %65, %struct.key_vector* %66)
  %68 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %69 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %88

72:                                               ; preds = %64
  %73 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = mul i64 2, %74
  %76 = add i64 %75, 1
  %77 = trunc i64 %76 to i32
  %78 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %79 = call %struct.key_vector* @get_child(%struct.key_vector* %78, i64 1)
  %80 = call i32 @put_child(%struct.key_vector* %73, i32 %77, %struct.key_vector* %79)
  %81 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = mul i64 2, %82
  %84 = trunc i64 %83 to i32
  %85 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %86 = call %struct.key_vector* @get_child(%struct.key_vector* %85, i64 0)
  %87 = call i32 @put_child(%struct.key_vector* %81, i32 %84, %struct.key_vector* %86)
  br label %39

88:                                               ; preds = %64
  %89 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %90 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %95 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %98 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call %struct.key_vector* @tnode_new(i32 %93, i32 %96, i32 %100)
  store %struct.key_vector* %101, %struct.key_vector** %11, align 8
  %102 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %103 = icmp ne %struct.key_vector* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %88
  br label %192

105:                                              ; preds = %88
  %106 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %107 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %110 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %113 = getelementptr inbounds %struct.key_vector, %struct.key_vector* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = call %struct.key_vector* @tnode_new(i32 %108, i32 %111, i32 %115)
  store %struct.key_vector* %116, %struct.key_vector** %10, align 8
  %117 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %118 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %119 = call i32 @tnode_free_append(%struct.key_vector* %117, %struct.key_vector* %118)
  %120 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %121 = icmp ne %struct.key_vector* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %105
  br label %192

123:                                              ; preds = %105
  %124 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %125 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %126 = call i32 @tnode_free_append(%struct.key_vector* %124, %struct.key_vector* %125)
  %127 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %128 = call i64 @child_length(%struct.key_vector* %127)
  store i64 %128, i64* %13, align 8
  %129 = load i64, i64* %13, align 8
  %130 = udiv i64 %129, 2
  store i64 %130, i64* %12, align 8
  br label %131

131:                                              ; preds = %134, %123
  %132 = load i64, i64* %12, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %167

134:                                              ; preds = %131
  %135 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %136 = load i64, i64* %12, align 8
  %137 = add i64 %136, -1
  store i64 %137, i64* %12, align 8
  %138 = trunc i64 %137 to i32
  %139 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %140 = load i64, i64* %13, align 8
  %141 = add i64 %140, -1
  store i64 %141, i64* %13, align 8
  %142 = call %struct.key_vector* @get_child(%struct.key_vector* %139, i64 %141)
  %143 = call i32 @put_child(%struct.key_vector* %135, i32 %138, %struct.key_vector* %142)
  %144 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %145 = load i64, i64* %12, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %148 = load i64, i64* %12, align 8
  %149 = call %struct.key_vector* @get_child(%struct.key_vector* %147, i64 %148)
  %150 = call i32 @put_child(%struct.key_vector* %144, i32 %146, %struct.key_vector* %149)
  %151 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %152 = load i64, i64* %12, align 8
  %153 = add i64 %152, -1
  store i64 %153, i64* %12, align 8
  %154 = trunc i64 %153 to i32
  %155 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %156 = load i64, i64* %13, align 8
  %157 = add i64 %156, -1
  store i64 %157, i64* %13, align 8
  %158 = call %struct.key_vector* @get_child(%struct.key_vector* %155, i64 %157)
  %159 = call i32 @put_child(%struct.key_vector* %151, i32 %154, %struct.key_vector* %158)
  %160 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %161 = load i64, i64* %12, align 8
  %162 = trunc i64 %161 to i32
  %163 = load %struct.key_vector*, %struct.key_vector** %9, align 8
  %164 = load i64, i64* %12, align 8
  %165 = call %struct.key_vector* @get_child(%struct.key_vector* %163, i64 %164)
  %166 = call i32 @put_child(%struct.key_vector* %160, i32 %162, %struct.key_vector* %165)
  br label %131

167:                                              ; preds = %131
  %168 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %169 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %170 = call i32 @NODE_INIT_PARENT(%struct.key_vector* %168, %struct.key_vector* %169)
  %171 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %172 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %173 = call i32 @NODE_INIT_PARENT(%struct.key_vector* %171, %struct.key_vector* %172)
  %174 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %175 = load i64, i64* %7, align 8
  %176 = mul i64 2, %175
  %177 = add i64 %176, 1
  %178 = trunc i64 %177 to i32
  %179 = load %struct.key_vector*, %struct.key_vector** %11, align 8
  %180 = call i32 @put_child(%struct.key_vector* %174, i32 %178, %struct.key_vector* %179)
  %181 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %182 = load i64, i64* %7, align 8
  %183 = mul i64 2, %182
  %184 = trunc i64 %183 to i32
  %185 = load %struct.key_vector*, %struct.key_vector** %10, align 8
  %186 = call i32 @put_child(%struct.key_vector* %181, i32 %184, %struct.key_vector* %185)
  br label %39

187:                                              ; preds = %39
  %188 = load %struct.trie*, %struct.trie** %4, align 8
  %189 = load %struct.key_vector*, %struct.key_vector** %5, align 8
  %190 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %191 = call %struct.key_vector* @replace(%struct.trie* %188, %struct.key_vector* %189, %struct.key_vector* %190)
  store %struct.key_vector* %191, %struct.key_vector** %3, align 8
  br label %196

192:                                              ; preds = %122, %104
  %193 = load %struct.key_vector*, %struct.key_vector** %6, align 8
  %194 = call i32 @tnode_free(%struct.key_vector* %193)
  br label %195

195:                                              ; preds = %192, %29
  store %struct.key_vector* null, %struct.key_vector** %3, align 8
  br label %196

196:                                              ; preds = %195, %187
  %197 = load %struct.key_vector*, %struct.key_vector** %3, align 8
  ret %struct.key_vector* %197
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.key_vector* @tnode_new(i32, i32, i32) #1

declare dso_local i32 @tnode_free_init(%struct.key_vector*) #1

declare dso_local i64 @child_length(%struct.key_vector*) #1

declare dso_local %struct.key_vector* @get_child(%struct.key_vector*, i64) #1

declare dso_local i32 @tnode_full(%struct.key_vector*, %struct.key_vector*) #1

declare dso_local i32 @put_child(%struct.key_vector*, i32, %struct.key_vector*) #1

declare dso_local i32 @get_index(i32, %struct.key_vector*) #1

declare dso_local i32 @tnode_free_append(%struct.key_vector*, %struct.key_vector*) #1

declare dso_local i32 @NODE_INIT_PARENT(%struct.key_vector*, %struct.key_vector*) #1

declare dso_local %struct.key_vector* @replace(%struct.trie*, %struct.key_vector*, %struct.key_vector*) #1

declare dso_local i32 @tnode_free(%struct.key_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
