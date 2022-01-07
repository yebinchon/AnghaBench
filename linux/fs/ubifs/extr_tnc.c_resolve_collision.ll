; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_resolve_collision.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_resolve_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fscrypt_name = type { i32 }

@NAME_MATCHES = common dso_local global i32 0, align 4
@NAME_GREATER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NAME_LESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.fscrypt_name*)* @resolve_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_collision(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.ubifs_znode** %2, i32* %3, %struct.fscrypt_name* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %union.ubifs_key*, align 8
  %9 = alloca %struct.ubifs_znode**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.fscrypt_name*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %8, align 8
  store %struct.ubifs_znode** %2, %struct.ubifs_znode*** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.fscrypt_name* %4, %struct.fscrypt_name** %11, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %16 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %17 = load %struct.ubifs_znode*, %struct.ubifs_znode** %16, align 8
  %18 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = load %struct.fscrypt_name*, %struct.fscrypt_name** %11, align 8
  %25 = call i32 @matches_name(%struct.ubifs_info* %15, %struct.TYPE_2__* %23, %struct.fscrypt_name* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %6, align 4
  br label %215

33:                                               ; preds = %5
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @NAME_MATCHES, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %215

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @NAME_GREATER, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %149

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %142
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %45 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @tnc_prev(%struct.ubifs_info* %44, %struct.ubifs_znode** %45, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @ubifs_assert(%struct.ubifs_info* %53, i32 %57)
  %59 = load i32*, i32** %10, align 8
  store i32 -1, i32* %59, align 4
  store i32 0, i32* %6, align 4
  br label %215

60:                                               ; preds = %43
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %215

65:                                               ; preds = %60
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %67 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %68 = load %struct.ubifs_znode*, %struct.ubifs_znode** %67, align 8
  %69 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %77 = call i64 @keys_cmp(%struct.ubifs_info* %66, i32* %75, %union.ubifs_key* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %65
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %83 = load %struct.ubifs_znode*, %struct.ubifs_znode** %82, align 8
  %84 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = icmp eq i32 %81, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %79
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %90 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @tnc_next(%struct.ubifs_info* %89, %struct.ubifs_znode** %90, i32* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %97 = call i32 @ubifs_assert(%struct.ubifs_info* %96, i32 0)
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %102, %95
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %215

107:                                              ; preds = %88
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @ubifs_assert(%struct.ubifs_info* %108, i32 %112)
  %114 = load i32*, i32** %10, align 8
  store i32 -1, i32* %114, align 4
  br label %115

115:                                              ; preds = %107, %79
  store i32 0, i32* %6, align 4
  br label %215

116:                                              ; preds = %65
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %118 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %119 = load %struct.ubifs_znode*, %struct.ubifs_znode** %118, align 8
  %120 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %124
  %126 = load %struct.fscrypt_name*, %struct.fscrypt_name** %11, align 8
  %127 = call i32 @matches_name(%struct.ubifs_info* %117, %struct.TYPE_2__* %125, %struct.fscrypt_name* %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %116
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %6, align 4
  br label %215

132:                                              ; preds = %116
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @NAME_LESS, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 0, i32* %6, align 4
  br label %215

137:                                              ; preds = %132
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @NAME_MATCHES, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  store i32 1, i32* %6, align 4
  br label %215

142:                                              ; preds = %137
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @NAME_GREATER, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @ubifs_assert(%struct.ubifs_info* %143, i32 %147)
  br label %43

149:                                              ; preds = %38
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %13, align 4
  %152 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  %153 = load %struct.ubifs_znode*, %struct.ubifs_znode** %152, align 8
  store %struct.ubifs_znode* %153, %struct.ubifs_znode** %14, align 8
  br label %154

154:                                              ; preds = %149, %208
  %155 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %156 = call i32 @tnc_next(%struct.ubifs_info* %155, %struct.ubifs_znode** %14, i32* %13)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @ENOENT, align 4
  %159 = sub nsw i32 0, %158
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  store i32 0, i32* %6, align 4
  br label %215

162:                                              ; preds = %154
  %163 = load i32, i32* %12, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %6, align 4
  br label %215

167:                                              ; preds = %162
  %168 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %169 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %170 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %169, i32 0, i32 1
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %177 = call i64 @keys_cmp(%struct.ubifs_info* %168, i32* %175, %union.ubifs_key* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %167
  store i32 0, i32* %6, align 4
  br label %215

180:                                              ; preds = %167
  %181 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %182 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %183 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %182, i32 0, i32 1
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 %186
  %188 = load %struct.fscrypt_name*, %struct.fscrypt_name** %11, align 8
  %189 = call i32 @matches_name(%struct.ubifs_info* %181, %struct.TYPE_2__* %187, %struct.fscrypt_name* %188)
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %180
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %6, align 4
  br label %215

194:                                              ; preds = %180
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @NAME_GREATER, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 0, i32* %6, align 4
  br label %215

199:                                              ; preds = %194
  %200 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %201 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %9, align 8
  store %struct.ubifs_znode* %200, %struct.ubifs_znode** %201, align 8
  %202 = load i32, i32* %13, align 4
  %203 = load i32*, i32** %10, align 8
  store i32 %202, i32* %203, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* @NAME_MATCHES, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  store i32 1, i32* %6, align 4
  br label %215

208:                                              ; preds = %199
  %209 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* @NAME_LESS, align 4
  %212 = icmp eq i32 %210, %211
  %213 = zext i1 %212 to i32
  %214 = call i32 @ubifs_assert(%struct.ubifs_info* %209, i32 %213)
  br label %154

215:                                              ; preds = %207, %198, %192, %179, %165, %161, %141, %136, %130, %115, %105, %63, %52, %37, %31
  %216 = load i32, i32* %6, align 4
  ret i32 %216
}

declare dso_local i32 @matches_name(%struct.ubifs_info*, %struct.TYPE_2__*, %struct.fscrypt_name*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tnc_prev(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @keys_cmp(%struct.ubifs_info*, i32*, %union.ubifs_key*) #1

declare dso_local i32 @tnc_next(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
